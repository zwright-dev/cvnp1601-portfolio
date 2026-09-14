I made a new user named devuser with a home directory. I verified the account using
id, /etc/passwd. I also created a developers group and added devuser to it.
I then used usermod -aG when adding the user to the group in order to keep the user's existing group
memberships instead of replacing them. I used /etc/passwd, /etc/shadow, and /etc/group to see
how Linux stores a users info. Then I configured a sudo rule using visudo so that devuser could
restart the nginx service without entering a password. I tested the allowed restart command
and also tested a command that was not allowed to make sure the sudo restriction was working. 
Finally, I used sudo -u devuser sudo -l to verify the permissions assigned to the account.
This lab helped me understand how Linux uses users, groups, file permissions,
and sudo to control access while still following the principle of least privilege while doing it.
