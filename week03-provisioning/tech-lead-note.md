Focus areas during this lab mainly focus on accounts. The account we created is named devuser,
and was given the home directory of /home/devuser. The shell is BASH and a UID of 1001(devuser).
We were abel to verify its memberships and also kept its existing memberships as well.
We wrote a rule for the account to restart the nginx service without needing a password.
(devuser ALL=(ALL) NOPASSWD: /bin/systemctl restart nginx) This rule can only allow this account to
restart the service and nothing else, not even stopping the service. we did this in visudo. I am
are still currently working on cleanup.

