1.) Walk me through provisioning a new hire's Linux account from scratch.

1.A)create the account with useradd and assign a membership. After user creation you can
customize a rule for what tasks they can accomplish.

2.) How do you grant someone the ability to restart one service without giving them root?

2.A) You can write a rule to do so. we did in the lab with (devuser ALL=(ALL) NOPASSWD:
/bin/systemctl restart nginx)

3.) Why do you always use usermod -aG instead of -G

3.A)so you dont get rid of previous memberships and replace them with the specified one on
accident.

4.) What's stored in /etc/shadow that isn't in /etc/passwd, and why does that split exist?

4.A)Password info. When was last changed, when it expires, its hash values. its mainly basic
password data.

5.)Tell me about a time an access request didn't work the way you expected.

5.A) I can't say that I have had too many that have been out of the ordinary. Most of the ones I use
are the account verification ones. I have just never really had a mishap with one.
