1.) What's the difference between a package that's installed and a service that's running?
1.A) An istalled package adds updated or newly installed services. You still need to activate or enable them

2.) Why enable a service instead of just starting it?
2.A) you can't assume that one does both so you should be running both to ensure it is both enabled and running.

3.)Why does a setup script need a verification block instead of just running the install commands
3.A)To make sure everything actually ran correctly and were successful. You never know if something might run into.

4.) Why test a setup script on a clean state instead of just running it once?
4.A) To make the environment safe and ready for script execution.

5.) Tell me about a time a command's output didn't tell the whole story.
5.A) I cannot recall specifics but I accidentally made another git repo with a misread input 
and I needed it gone. So safe to say i was a little frustrated and started forcing commands and 
deleted my main repo without knowing. luckily i was able to revert to a screenshot and 
added it all back so we are good.
