#!/bin/bash

###################################################################################

# Script Name:    backup_etc.sh

# Description:    Production-standard backup tool for archiving /etc configurations.

# Security Note:  Backups are critical incident-recovery evidence.

###################################################################################

# --- Variables ---
# Grouped near the top for easy maintenance
SOURCE_DIR="/etc"
TARGET_DIR="/var/backups/etc"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_NAME="etc_backup_${TIMESTAMP}.tar.gz"
LOG_FILE="/var/log/backup_etc.log"

# --- Functions ---
# Unified logging function to keep console and log files identical
log() {
    local MESSAGE="$1"
    local TIMESTAMP_LOG=$(date +"%Y-%m-%d %H:%M:%S")
    echo "[${TIMESTAMP_LOG}] ${MESSAGE}" | sudo tee -a "${LOG_FILE}"
}

# --- Initialization & Main Execution ---
log "Starting backup workflow for system: $(hostname)"

# Ensure the backup storage directory exists safely
if [ ! -d "${TARGET_DIR}" ]; then
    log "Creating missing target directory: ${TARGET_DIR}"
    sudo mkdir -p "${TARGET_DIR}"
fi

log "Creating archive at ${TARGET_DIR}/${ARCHIVE_NAME}..."

# Execute tar directly inside the if-statement to capture its true exit code.
# Avoids pipeline masking errors and ensures reliable failure capture.
if sudo tar -czf "${TARGET_DIR}/${ARCHIVE_NAME}" "${SOURCE_DIR}" 2>/dev/null; then
    log "SUCCESS: Archive created successfully."
    # Verification check to validate the file size on disk for recovery auditing
#    FILE_SIZE=$(ls -lh "${TARGET_DIR}/${ARCHIVE_NAME}" | awk '{print $5}')
#   log "Verification: Backup archive file size is ${FILE_SIZE}."
else
    log "CRITICAL ERROR: Tar command failed. Aborting backup operation."
    exit 1
fi

log "Backup workflow completed successfully."
