# Week 1 Diagnosis

## State
- First command (`grep -i "error" syslog > ~/incident.txt`) created a file with 215 lines, confirmed by `wc -l ~/incident.txt`.
- Second command (`grep -i "critical" syslog > ~/incident.txt`) created a file with only 3 lines, also confirmed by `wc -l ~/incident.txt`.
- The transcript shows the evidence file changing, not the log file itself.

## Root Cause
The trainee used > redirection twice to the same file. The second command overwrote the original 215-line file with only the 3 lines matching the "critical" entries. This is a misuse of > instead of >>, not a logging system issue.

## Remediation
Use append redirection for the second capture so the new lines critical are added to the existing evidence instead of replacing it:

\`\`\`bash
grep -i "error" syslog > ~/incident.txt
grep -i "critical" syslog >> ~/incident.txt
\`\`\`

This will keep the original 215 "error" lines and will add the 3 additional "critical" lines to the samefile.

## Verification
1. **Line count check:**

   Run:

   \`\`\`bash
   wc -l ~/incident.txt
   \`\`\`

   Expected: 218 total lines 215 error + 3 critical.

2. **Content check with grep:**

   - Verify the amount of error lines:

     \`\`\`bash
     grep -i "error" ~/incident.txt | wc -l
     \`\`\`

     Expected: 215.

   - Verify the amount of critical lines:

     \`\`\`bash
     grep -i "critical" ~/incident.txt | wc -l
     \`\`\`

     Expected: 3.

These two checks independently confirm that the evidence file now contains both entries and was not overwritten by the second command.
