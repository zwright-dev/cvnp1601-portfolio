STATE
The script did execute as expected, and  tee -a "$LOG" ran and had an output. A file was created 
as ".tar.gz" in the directory /var/backups/etc. A message appeared saying "backup succeeded and 
echo returned with 0. However no files were able to be read by tar with the permission denied 
message and had produced a failure status.

ROOT CAUSE
It looks like the 'if' condition is looking for the exit status and that status i think is the 
failure of tar so it is 0.

REMEDIATION
to include a pipefail so a failure will return if any command does in said pipe.

VERIFICATION
run the updated script and see that no success message appears or look at the value change on the 
echo. It is important that false messages are snuffed out before only partial backups are 
saved in place of real ones.
