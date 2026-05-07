Digital Forensics
Hands-on #5

This project consists of two parts.

 

Part #1: Regex Analysis of Auth Logs

You are provided with a log file containing authentication activity named "server_connections.log Download server_connections.log".

Your task is to use grep with regular expressions and any tool or technique discussed in class to find the following information:

How many total IPv4 addresses appear in the log file?
How many unique IPv4 addresses appear in the log file?
How many failed login attempts are recorded in the log file?
How many successful login attempts are recorded in the log file?
How many unique IPv4 addresses were associated with a successful login?
How many unique IPv4 addresses were associated with an unsuccessful login?
You need to provide a detailed report including the grep command(s) using regex that you ran along with annotated screenshots of the output.

Within your methodology section, your screenshots must clearly show:

the full grep command
the full command output
You need to discuss and justify your answers.

Part #2: Windows registry analysis

You are provided with a forensically collected copy of a Windows 10 registry named “Win10Reg.7z Download Win10Reg.7z”.

Your task is to use any tool or technique discussed in class to find the following information:

How many users and groups are associated with this system according to the Security Accounts Manager?
What are the names of the users associated with this registry?
When did the user aubie last log in to the system?
What applications are automatically started when the user logs into the system and when was the last time the autostart was run?
What was the private IP address associated with the system?
What are the most recently executed commands from the Windows Run command window?
You need to provide detailed report including the commands you ran along with annotated screenshots of the output. You need to discuss and justify your answers. 

Final report and submission

Submit your final report in PDF format for both parts into one report with all the required details and justification. Note that a single-page report will not adequately show your work so be prepared to have an in-depth analysis and description of the methods you used to work on this project. You must use this Template Download Templateto complete your report
 Some Global Deductions:

(-20) More than one report submitted (You should submit 1 report for this entire assignment)

(-10) Report is not in PDF format

(-10) Report is submitted within a zip file.

Automatic 0 for corrupted file submissions.  Please double check your submission.

Rubric
Hands-On 5 Rubric
Hands-On 5 Rubric
Criteria	Ratings	Pts
This criterion is linked to a Learning OutcomePart #1: IPv4 Address Identification
10 to >9.0 pts
Full Marks
Correctly identifies total IPv4 addresses and unique IPv4 addresses with appropriate grep/regex commands.
9 to >6.0 pts
Minor Errors
Mostly correct with minor command, counting, or explanation issues.
6 to >3.0 pts
Partially Correct
Partial answers with some correct commands, but incomplete or inconsistent results.
3 to >0.0 pts
Major Issues
Major errors in answers or commands.
0 pts
No Answer
No clear response provided to question.
10 pts
This criterion is linked to a Learning OutcomePart #1: Login Attempt Analysis
20 to >19.0 pts
Full Marks
Correctly identifies failed login attempts, successful login attempts, and unique IPv4 addresses associated with successful and unsuccessful logins using appropriate grep/regex commands or pipelines.
19 to >14.0 pts
Minor Errors
Mostly correct with minor command, counting, or interpretation issues.
14 to >7.0 pts
Multiple Errors
Partial attempt with some correct logic, but incomplete or inaccurate results.
7 to >0.0 pts
Major Issues
Major command or interpretation errors.
0 pts
Not Provided
No clear response
20 pts
This criterion is linked to a Learning OutcomePart #1: Methodology, Screenshots, and Justification
15 to >14.0 pts
Full Marks
Commands are clearly documented. Screenshots show full command and output. Answers are well justified.
14 to >10.0 pts
Minor Errors
Mostly complete with minor missing details.
10 to >5.0 pts
Multiple Errors
Some documentation or screenshots are present, but incomplete or unclear.
5 to >0.0 pts
Major Issues
Major missing documentation or weak justification.
0 pts
Not Provided
No clear response
15 pts
This criterion is linked to a Learning OutcomePart #2: Accounts Overview - Users & Groups
15 to >14.0 pts
Full Marks
Correct count of users/groups and all usernames listed with supporting evidence.
14 to >10.0 pts
Minor Errors
Mostly correct, with one minor missing or incorrect detail.
10 to >5.0 pts
Moderate Errors
Partial identification with incomplete explanation or weak evidence.
5 to >0.0 pts
Major Errors
Major errors in count, names, or evidence.
0 pts
No Marks
No clear response
15 pts
This criterion is linked to a Learning OutcomePart #2: Last Logon for “Aubie”
10 to >9.0 pts
Full Marks
Correct timestamp identified with evidence and methodology/tool output shown.
9 to >6.0 pts
Explained Only
Correct answer with minor issues in evidence or method.
6 to >3.0 pts
Partial Correct
Partial attempt, but timestamp, evidence, or method is incomplete.
3 to >0.0 pts
Major Issues
Major error or missing support.
0 pts
No Marks
No clear response
10 pts
This criterion is linked to a Learning OutcomePart #2: Autostart Entries & Last Run Time
10 to >9.0 pts
Fully Recovered
Applications and last autostart time correctly identified with evidence.
9 to >6.0 pts
Minor Issues
Mostly correct with minor detail or evidence issue.
6 to >5.0 pts
Partial Recovery
Partial identification with incomplete support.
5 to >0.0 pts
Major Issues
Major missing details or incorrect findings.
0 pts
No Recovery
No clear response
10 pts
This criterion is linked to a Learning OutcomePart #2: Private IP Address
10 to >9.0 pts
Fully Recovered
Correct private IP address(es) identified with evidence.
9 to >6.0 pts
Minor Issues
Correct or mostly correct with minor issues.
6 to >5.0 pts
Partial Recovery
Partial answer or incomplete evidence.
5 to >0.0 pts
Major Issues
Major error or weak evidence.
0 pts
No Recovery
No clear response
10 pts
This criterion is linked to a Learning OutcomePart #2: Windows “Run” MRU Entries
10 to >9.0 pts
Fully Recovered
Most recently executed commands are correctly listed with evidence.
9 to >6.0 pts
Minor Issues
Mostly correct, but one item or evidence is unclear.
6 to >5.0 pts
Partial Recovery
Partial list or weak evidence.
5 to >0.0 pts
Major Issues
Major missing details or incorrect commands.
0 pts
No Recovery
No clear response
10 pts
Total Points: 100