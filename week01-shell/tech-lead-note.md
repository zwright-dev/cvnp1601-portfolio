While working through this ticket, I confirmed/navigated the filesystem. Used core diagnostic commands such as grep,
find, wc, and redirection operators to capture and investigate evidence.\
The most important command outputs I would argue were the line count and filtered log options,
which showed how different search patterns produced different evidence sets based on what is needed to be checked at the time.
Reviewing /var/log/syslog helped confirm that the system was behaving normally and that any unexpected results found were
caused by command usage rather than system issues.

The key finding was that evidence handling matters more than the commands themselves.
Using > instead of >> demonstrated how easily logs or captured data can be overwritten and lost,
which can mislead troubleshooting and create false assumptions about system behavior. 
If this pattern repeated or impacted an active incident,
I would likely escalate for additional training or review of evidence‑capture procedures if this were to be a recurring issue.

From a security angle, precise log handling reduces the guesswork involved in
determining the incident origin and preserves the integrity of incident timelines.
It also prevents accidental data loss that could obscure real threats.
Accurate evidence is essential for reliable diagnostics and proper escalation procedures.
