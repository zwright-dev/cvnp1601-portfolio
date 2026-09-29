TECH LEAD NOTE-

The script that we used during this lab is used to automate web server setup and configuration. 
The script is designed to save time by removing the need of manual configuration. We reverted to a clean apt state 
using the purge command and executed the script. Next was verification. 
Systemctl is-active nginx and systemctl is-enabled nginx for our verification method. The commands confirmed 
that tht the service was both running and configured to start right away without any flaw. This lab gives an 
introduction to creating configuration scripts to make configuration fast, easy, and safe from easy to look 
over misconfiguration and other user error
