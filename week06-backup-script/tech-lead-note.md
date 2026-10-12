TECH LEAD NOTE- This script is used to automating the task of manually backing up the /etc directory
with compressed archives with timestamps while still being consistent and repeatable and eliminating
the need for manual backups. The archived copies are able to hold multiple backup versions for 
recovery while in the archive. Also logs of these backups will include an audit trail and can be 
viewed without running the script. The script is also made with error prevention in and has been set
up with failure error messages and discards filecreation if failure occurs. This prevents any chance 
of false success. This script takes a lot of tedium and worry out of the equation of backup 
creation and logging.
