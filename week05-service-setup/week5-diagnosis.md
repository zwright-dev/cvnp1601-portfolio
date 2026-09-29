Break/Fix Diagnostic-

STATE
The script completed the install successfully, but nginx did not appear to be running post execution.
Verification came back as error instead of success.

ROOT CAUSE
The nginx was likely not started or enabled correctly. The packaged was installed but the service was not set as active

REMEDIATION
Enable the service with sudo systemctl enable --now nginx it should come back as active or enabled

VERIFICATION
Run systemctl is-active nginx and systemctl is-enabled nginx to make sure the servis is running properly.

