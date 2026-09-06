1.) State: The Trainees commands ran successfully, and was able to produce and confirm
40 lines. Except for uniq -c command which didn't group the 3 10.0.0.5 addresses.

2.) Root Cause: Uniq counted them as diffent values instead of the same because they are not right next
to one another. So uniq reads them as their own different value even though they are identical.

3.) Remediation: another sort needed to be added in front of the script to group them together and
get counted properly by uniq.

4.) Verificaton: Using "sort src-ips.txt | uniq -c | grep 10.0.0.5" or "grep "10.0.0.5" src-ips.txt | wc -l" confirms
that an adress we are certain is appearing multiple time gets counted together instead of still being seperate lines
 in the document.
