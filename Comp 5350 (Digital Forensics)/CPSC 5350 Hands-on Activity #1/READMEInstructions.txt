Digital Forensics
Hands-on Activity #1

For this project, you will work INDIVIDUALLY and focus on the analysis of FAT16 partition, and will require an understanding of how to recover data from each properly.

Background: 
APT99 orchestrated a major heist targeting the Central Bank a few days ago, exploiting vulnerabilities in the bank’s digital infrastructure. During the breach, large sums of money were siphoned off into anonymous accounts, causing a significant financial impact and raising concerns about the security of national financial institutions.

Investigators have recovered a laptop believed to belong to one of the key members of APT99. Forensic experts have extracted a disk image from this laptop, named Hands-on-activity01-SP2026.ddDownload Hands-on-activity01-SP2026.dd

As a member of the forensics team of the cybersecurity force, your task is to analyze the disk image to uncover the truth behind the hack of the APT99 as soon as possible. The group's failure to securely handle their data has left traces of their communications and plans within the disk image, despite their attempts to delete the files. The disk image may contain critical evidence about the breach that can help find the criminals.

Note: Root Directory Size (sectors): 32

SHA256 (Hands-on-activity01-SP2026.dd) = 0a2964615042fee5e31e9db53423b15591067833078458cd85e12bcb3d080ea6

md5sum (Hands-on-activity01-SP2026.dd) = 1df3e17bbd5168857e7b13088c7e477b  

Objectives

You must submit a detailed forensic report that clearly explains what happened in the heist/hack, based on your analysis of the disk image.
Your report must answer the following:
Q1) Identify the number of partitions on the disk image, and state the type of each partition.
Q2) For each partition, list every file you find, including file name and file size.
Q3) For each file, report the starting byte offset and ending byte offset on the disk (where the file’s data is located). Use the recovery template excel sheet as part of your submission. 
Q4) For each FAT partition, explain what you observed in:

the File Allocation Table (FAT) (how clusters are marked/linked), and
the Root Directory (directory entries, timestamps if present, deleted/active markers, starting cluster, size, etc.).
Q5) Manually recover all files from each disk image. You must document the recovery with step-by-step instructions and annotated screenshots. Do not use automated file recovery tools for this project. 
You must include all recovered files (the actual files themselves) as part of your final submission, in addition to the written report and screenshots.
Q6) Analyze the recovered files in depth to determine what they reveal about the operation (objective, plan, and key details). Specifically look for items like addresses, usernames/passwords, tools, targets, timelines, and dates/times.
Q7) Identify and explain any data hiding methods used on the laptop (for example: deleted-file hiding, slack space, hidden partitions, renamed extensions, steganography, etc.).
Q8) State the criminals’ ultimate objective, then build a timeline of their plan based on evidence. Write it as a coherent narrative (“tell the story”) supported by artifacts.
Q9) Determine whether the criminals identified any vulnerabilities. If yes, name the vulnerability (CVE if available), describe it, and report its CVSS base score (using the CVSS system).

Final Report

You need to provide a final report using the provided template Download template along with the FAT16 Data Recovery template Download FAT16 Data Recovery template. The final report should provide answers to the questions from the grading rubric.

The format of the final report will include the following sections:

1) Executive summary

2) Detailed analysis of the partition allocation and an illustration of the partition map indicating the volume size, and the number of sectors per field in the partition map. 

3) Detailed analysis of the data recovery process, including annotated screenshots. 

4) Description of analysis techniques utilized.

5) Detailed analysis and description of the contents of each file, and how this information is relevant to find the hackers' objectives. 

The purpose of this report is to show that an effective analysis of the disk image was properly conducted. A single-page report will not adequately answer all questions so be prepared to have an in-depth analysis and description of the methods you used to answer the questions. Your work must be supported by annotated screenshots showing how the information was extracted/gathered.

Grading Rubric

The grading rubric that will be used to grade each disk image will be based on the following criteria:

Activity

%

Points

Number and type of partitions specified?

5%

5

File status, filename, extension, attributes, and file sizes specified?

10%

10

Was the byte offset for each file specified?

15%

15

Was a File Allocation Table provided?

10%

10

Were all files recovered from partitions? You need to upload the recovered files along with your submission.

35%

35

Were hiding methods specified?

15%

15

Describe what tools or applications were used to hide data

5%

5

Describe the ultimate objective of users of the laptop

5%

5

 

100%

100

 

 Common Point Deductions NOT listed on rubric:

-10 Report not in PDF form
-10 Report not correctly formatted / hard to follow
- 35 For Automatic Tool Use 
Rubric
Hands-On 1 Rubric - SP26
Hands-On 1 Rubric - SP26
Criteria	Ratings	Pts
This criterion is linked to a Learning OutcomeNumber and type of partitions specified?
5 pts
Full Marks
Correct number of partitions and correct file system types identified.
2.5 pts
Partially Correct
Incorrect number/type of partitions
0 pts
No Answer
No clear response provided to question.
5 pts
This criterion is linked to a Learning OutcomeFile status, filename, extension, attributes, and file sizes specified?
10 to >9.5 pts
Full Marks
All required metadata correctly specified.
9.5 to >7.0 pts
Minor Errors
One or two minor metadata errors (e.g., slightly incorrect file size, missing status once).
7 to >4.5 pts
Multiple Errors
Multiple incorrect or missing metadata elements.
4.5 to >0.0 pts
Largely Incorrect
Most metadata incorrect or missing.
0 pts
Not Provided
Metadata not provided.
10 pts
This criterion is linked to a Learning OutcomeWas the byte offset for each file specified?
15 to >14.5 pts
Full Marks
All offsets correct and properly expressed.
14.5 to >11.5 pts
Minor Errors
One or two minor offset errors.
11.5 to >9.0 pts
Moderate Errors
Multiple incorrect offsets or unit mistakes.
9 to >5.0 pts
Major Errors
Significant misunderstanding of offsets or units. Possibly missing all starting or ending byte offsets.
5 to >0.0 pts
Incorrect/Missing
Offsets mostly incorrect or not provided.
0 pts
No Marks
No offsets provided.
15 pts
This criterion is linked to a Learning OutcomeWas a File Allocation Table provided?
10 pts
Full Marks
FAT correctly identified, provided, and accurately explained.
7.5 pts
Explained Only
FAT not provided but explanation is correct and sufficient.
5 pts
Partial Understanding
FAT partially explained or incorrect location identified.
0 pts
No Marks
FAT not provided or explained.
10 pts
This criterion is linked to a Learning OutcomeWere all files recovered from partitions?
35 to >34.5 pts
Fully Recovered
All files correctly recovered with correct commands and methodology. File contents are sufficiently described and analyzed.
34.5 to >27.0 pts
Minor Issues
Minor issues with commands, recovery steps, or file analysis, but files largely correct.
27 to >17.5 pts
Partial Recovery
Some files recovered incorrectly, missing, or not enough analysis is provided.
17.5 to >0.0 pts
Major Issues
Major recovery errors; most files incorrect/missing, or automatic tools were used.
0 pts
No Recovery
Files not recovered
35 pts
This criterion is linked to a Learning OutcomeWere hiding methods specified?
15 to >14.5 pts
Correctly Identified
All hiding methods correctly identified.
14.5 to >7.5 pts
Partially Identified
Some hiding methods identified; others missing or incorrect.
7.5 to >0.0 pts
Minimal Identification
Hiding methods mentioned but largely incorrect.
0 pts
Not Identified
No hiding methods mentioned.
15 pts
This criterion is linked to a Learning OutcomeDescribe what tools or applications were used to hide data
5 pts
Correctly described.
Correct tools/applications identified and described.
2.5 pts
Partially Described
Tools mentioned but explanation is incomplete.
0 pts
Not Provided
No tools or applications described.
5 pts
This criterion is linked to a Learning OutcomeDescribe the ultimate objective of users of the laptop
5 pts
Well Reasoned
Objective clearly stated and well supported by evidence. Any vulnerabilities mentioned are identified, explained, and score is provided.
2.5 pts
Some Reasoning
Objective and vulnerabilities stated but weakly supported.
0 pts
Not Addressed
Objective/vulnerabilities not mentioned.
5 pts
Total Points: 100