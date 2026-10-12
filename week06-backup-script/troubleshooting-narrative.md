1 "Why put every path in a variable at the top of a script instead of writing it inline where it's used?"

To define the paths at the top of a script

2 "Why does a production script need its own logging function instead of just printing to the screen?"

Because they are usually not available to print in automated runs

3 "What does a Git commit history actually prove to a teammate who didn't watch you write the script?"

It shows the step by step evolution, and the ownership of those changes.

4 "Why does a script need to check an exit code instead of just trusting the command ran?"

To make sure that quiet failure doesn't occur and cause cascading problems.

5 "Tell me about a time a script's output looked fine but something was actually wrong."

My hiccup with week four is likely a good example. I thought i was removing a file I screwed up 
inside a directory, It wasn't until I went to see the updated contents that I figured out that the
directory didn't exist anymore and everything was lost. Very thankful for snapshots
