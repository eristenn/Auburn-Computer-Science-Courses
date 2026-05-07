Digital Forensics
Hands-on #3

An FTP server was employed to store and share sensitive employee data within your organization. An authorized employee was assigned to log in and download a file containing employee details. Unfortunately, this file was later leaked, leading to suspicious activity being detected on the FTP server. Multiple unauthorized login attempts were recorded from various IP addresses, with these users trying to download or upload files to the server.


You are give a captured traffic from the server name FTPPackets.pcap Download FTPPackets.pcapand tasked to perform forensic analysis of the incident, identify the employees involved, and recover all relevant details and files related to these unauthorized activities.

Authorized Login and Download

Identify the authorized employee who logged in initially and provide their ftp_username.
Provide login timestamp, MAC and IP address of the user, and the name of file downloaded (employee details file).
Recover the file and provide the file's size (in bytes), SHA-256 hash, and MD5 hash of the file.
Step 2: Detect Unauthorized Access

Analyze the server logs for all subsequent logins and identify:
All the users who logged in (by username).
The IP addresses they used.
The timestamps (actual times in DD-MM-YYYY HH:MM:SS format) of their login activities.
Step 3: Analyze Uploaded and Downloaded Files

For each login, determine:
Whether the files were downloaded or uploaded.
Each file's name, size and hash value to confirm if files were modified.
Recover all the files that were downloaded and uploaded. 
Provide a summary of your findings in a table format with the following columns:

Username	IP Address	MAC address	
Login Time

(DD-MM-YYYY HH:MM:SS)

Action (Download/Upload)	File name + extension 	File size (bytes)	File hash
You need to provide detailed report including annotated screenshots supporting your findings.

You need to provide a copy of all received files that were part of the activities on the server.

Final report and submission

Submit your final report in PDF format with all the required details and justification. Note that a single-page report will not adequately show your work so be prepared to have an in-depth analysis and description of the methods you used to work on this project. You must use the Report Template Download Report TemplateDownload Report Templateto complete the assignment.
A copy of all the recovered and accessible files. This should be submitted as an archive file (*.zip). The PDF should be submitted as a separate file, not within the archive file.
Grading Rubric

 Some Global Deductions:

(-10) Report is not in PDF format

(-10) Report is submitted within a zip file.

(-30) No annotated screenshots.

 

Rubric
Hands-On 3 Rubric - SP26
Hands-On 3 Rubric - SP26
Criteria	Ratings	Pts
This criterion is linked to a Learning OutcomeAuthorized Login & Initial Download
30 to >27.0 pts
Full Marks
Correct authorized employee identified with correct ftp_username. Includes login timestamp, MAC address, IP address, and downloaded filename. File recovered with correct size (bytes), SHA-256, and MD5.
27 to >22.0 pts
Minor Errors
Authorized user correct, but one required element missing or slightly incorrect (e.g., MAC missing or one hash missing).
22 to >12.0 pts
Partially Correct
Authorized login identified but multiple missing details OR incomplete recovery/hash validation.
12 to >0.0 pts
Major Issues
Incorrect user OR major evidence missing OR file not properly recovered.
0 pts
No Answer
No clear response provided to question.
30 pts
This criterion is linked to a Learning OutcomeUnauthorized Access Detection (All subsequent Logins)
20 to >18.0 pts
Full Marks
ALL usernames, IP addresses, and timestamps correctly identified and formatted (DD-MM-YYYY HH:MM:SS).
18 to >14.0 pts
Minor Errors
One or two missing entries or formatting issues.
14 to >8.0 pts
Partially Correct
Multiple missing or incorrect entries.
8 to >0.0 pts
Major Issues
Significant misunderstanding of login activity.
0 pts
No Answer
No clear response provided to question.
20 pts
This criterion is linked to a Learning OutcomeFile Activity Per Login (Upload/Download Mapping)
15 to >13.0 pts
Full Marks
Correct action (upload/download) and correct filename tied to each login.
13 to >10.0 pts
Minor Errors
One or two incorrect mappings.
10 to >6.0 pts
Partially Correct
Multiple incorrect or missing file-action mappings.
6 to >0.0 pts
Major Issues
File activity largely incorrect or incomplete.
0 pts
No Answer
No clear response provided to question.
15 pts
This criterion is linked to a Learning OutcomeFile Integrity Verification (Size + Hash + Modification Analysis)
10 pts
Full Marks
Correct file size (bytes) and SHA-256 provided for each transferred file. Hashes used to support modification analysis.
7 pts
Minor Issues
Integrity data mostly correct but missing for one file or weak modification discussion.
4 pts
Partially Correct
Incomplete or inconsistent integrity verification.
0 pts
No Answer
No clear response provided to question.
10 pts
This criterion is linked to a Learning OutcomeRecovery & Submission of ALL Transferred Files
20 to >18.0 pts
Fully Recovered
All uploaded and downloaded files recovered correctly and included with submission. Files open and validate properly. Hashes match reported values.
18 to >14.0 pts
Minor Issues
One file missing OR minor recovery issue but overall effort correct.
14 to >8.0 pts
Partial Recovery
Multiple files missing OR incomplete recovery.
8 to >0.0 pts
Major Issues
Significant recovery failures; most files missing or incorrect.
0 pts
No Recovery
Files not recovered.
20 pts
This criterion is linked to a Learning OutcomeFindings Summary Table
5 pts
Full Marks
Complete table with all required columns.
3 pts
Partially Complete
Minor column missing or formatting issue.
0 pts
No Marks
None provided or major formatting issue.
5 pts
Total Points: 100