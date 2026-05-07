Digital Forensics
Hands-on Activity #2

For this part of the project, you will work INDIVIDUALLY and focus on the analysis of FAT & NTFS partitions, and will require an understanding of how to recover data from each properly.

Background: 
Disclaimer: This case scenario is entirely fictional and created solely for educational purposes. Any resemblance to real persons, events, or organizations is purely coincidental. The content is intended to support classroom learning, and it must not be interpreted as instructions or guidance for real-world activities. Students are expected to treat this scenario as a simulation exercise only and use it to practice analytical, investigative, and reporting skills within an academic setting.

Our team recovered a laptop belonging to one of the individuals suspected of an art theft. A forensic disk image of that laptop was created and provided to our lab for analysis. Preliminary information indicates the group met at a restaurant, but the exact time and the remainder of their plan are unknown. We were unable to intercept any telephone calls or text messages during the investigation, other than the initial communication from what seems to be their leader, “Shadow”; their communications appear to have been conducted exclusively via files, which suggests the relevant evidence resides on the disk image. It is likely that some files were deleted prior to acquisition. Please assist us in reconstructing and recovering any evidentiary material from the image.

You can download a copy of the "case001_investigation_disk" disk image using the following command: 

wget https://auburn.box.com/shared/static/rjw7uygsafr8f3lazy3smuxzvjdlrx9h.zip
Links to an external site. 
MD5 of case001_investigation_disk.dd: 72d231a55e9218cff755dbebf4975828

Here is the intercepted communication:
________________
Team,

We already acquired the artwork and shipped it. We were told we need a copy of the Certificate of Authenticity to convince the buyers of the piece’s authenticity. We do not want to alarm the registrar; that is why we need only a photographic copy—nothing that interferes with the original. 

I am tracking the registrar’s movements, and I will post the next update to our shared-disk as soon as I confirm it. Do not call. Do not text. Files only. 

Check the shared disk for my upload. 

Do not discuss this outside the secure disk. Do not include attachment extensions if possible or just change those extensions to avoid detection if was captured. Move quickly. Act only on what is posted in the folder.

I will post the next files, including our next meeting location (the restaurant).

As I am tracking the location of the registrar, you should expect information about the hotel, the room number and the time for you to move in. Once you have acquired the photo of the CoA, password-protect it with the zip code of the restaurant of where we met. 

Secure the files as much as you can by deleting, encoding or password protecting them. 

Shadow

________________

As a forensics examiner, you are tasked to reconstruct the plan and provide all the evidence in support of your findings.
For each recovered file, you must provide the following information:
•    The file name
•    The correct file extension supported by the file signature
•    The status of the file (active or deleted)
•    Evidence of any file manipulation and a detailed process of how it was recovered to ensure correct access and content viewing.
•    A detailed process of how passwords were recovered, supported by annotated screenshots.
•    All commands for checking, viewing, and recovering artifacts must be clear and included in the screenshots to support your answer.
•    A detailed discussion of how your commands work, their purposes, and any option variables should be provided. Screenshots showing only results will not be accepted.
•    For each file, provide the file hash using both the md5sum and sha256sum commands.
•    All the commands should have their output shown in the screenshot. 

Objectives

You must submit a detailed forensic report that clearly explains what happened in the heist/hack, based on your analysis of the disk image.
Your report must answer the following:
Q1) Identify the number of partitions on the disk image, and state the type of each partition.

Q2) For each partition, list every file you find, including file name and file size.

Q3) For each file, report the starting byte offset and ending byte offset on the disk (where the file’s data is located). Use the recovery template Excel sheet as part of your submission.

Q4) Manually recover all files from each disk image. You must document the recovery with step-by-step instructions and annotated screenshots. Do not use automated file recovery tools for this project. Disk-Editor viewer and Binwalk are permitted, but automated file recovery tools are strictly prohibited during this project (this includes mmls, autopsy, sluth-kit commands, ....).  For file recovery, you must use the "dd" and "hexdump"  commands, as we have discussed in class.

You must include all recovered files (the actual files themselves) as part of your final submission, in addition to the written report and screenshots.

Q6) Analyze the recovered files in depth to determine what they reveal about the operation (objective, plan, and key details). Specifically look for items like addresses, usernames/passwords, tools, targets, location, coordinates, timelines, and dates/times.

Q7) Identify and explain any data hiding methods used on the laptop (for example: deleted-file hiding, slack space, hidden partitions, renamed extensions, steganography, etc.).

Q8) State the criminals’ ultimate objective, then build a timeline of their plan based on evidence. Write it as a coherent narrative (“tell the story”) supported by artifacts.

Note: # System $MFT Records = 64

Final Report

What to turn in:    

A detailed Forensic report for your recovery process and evidence gathering. This should include a timeline of the crime with all the details behind recovering the certification of authenticity. You need to present evidence, including the locations, time, and artifacts. This should be submitted as a single PDF file. You must use the Report Template Download Report Templateto complete the assignment.
A copy of all the recovered and accessible files. This should be submitted as an archive file (*.zip). The PDF should be submitted as a separate file, not within the archive file.
A recovery Excel sheet template that includes all the details specified in the template for each partition. Ensure that each partition is included in a separate sheet within your main recovery Excel file. The RecoverySheet.xlsx Download RecoverySheet.xlsx should be submitted as a separate file, not within the archive file.
General Rules

Use the following structure for all file names:
LastName_FirstName_AssignmentName_FileType
Do not use spaces; use underscores _ instead.
Always include your full name (last name first) to avoid confusion.
Submit exactly three files: one PDF, one ZIP, and one Excel file.
Each screenshot must contain the full command used and full output.  Screenshots without your vm username (FirstLast@digitalforensics), entire command, or output will not be accepted.
Specific File Names

Report (PDF): LastName_FirstName_ForensicReport.pdf
Recovered Files Archive (ZIP): LastName_FirstName_RecoveredFiles.zip
ecovery Sheet (Excel): LastName_FirstName_RecoverySheet.xlsx
Important Notes

The PDF and Excel Sheet must be submitted as separate files, not inside the ZIP.
The ZIP should include only the recovered and accessible files.
The Excel sheet must have a separate worksheet for each partition, clearly labeled.
Using automated tools will result in a 0 for the assignment.  When in doubt about a tool, ask the TA's.
Rubric
Hands-On 2 Rubric - SP26
Hands-On 2 Rubric - SP26
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
All required metadata correctly specified. Excel sheet is provided and contains relevant information for each partition.
9.5 to >7.0 pts
Minor Errors
One or two minor metadata errors (e.g., slightly incorrect file size, missing status once). Excel sheet is provided and contains relevant information for each partition.
7 to >4.5 pts
Multiple Errors
Multiple incorrect or missing metadata elements. Excel sheet is provided and may or may not be missing information for a partition.
4.5 to >0.0 pts
Largely Incorrect
Most metadata incorrect or missing. Excel sheet is provided and is largely incorrect/irrelevant.
0 pts
Not Provided
Metadata not provided. Automatic 0 if excel sheet is not provided.
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
This criterion is linked to a Learning OutcomeWere the FAT/MFT's provided?
10 pts
Full Marks
Each MFT/FAT correctly identified, provided, and accurately explained.
7.5 pts
Explained Only
MFT or FAT not provided but explanation is correct and sufficient.
5 pts
Partial Understanding
MFT/FAT partially explained or incorrect location identified. If multiple partitions, may have included MFT/FAT for one and not the other.
0 pts
No Marks
MFT/FAT not provided or explained.
10 pts
This criterion is linked to a Learning OutcomeWere all files recovered from partitions?
35 to >34.5 pts
Fully Recovered
All files correctly recovered with correct commands and methodology. Files are also included within zip file with submission.
34.5 to >27.0 pts
Minor Issues
Minor issues with commands or recovery steps, but files largely correct. Files are also included within zip file with submission.
27 to >17.5 pts
Partial Recovery
Some files recovered incorrectly or missing. Most files are included within zip file with submission.
17.5 to >0.0 pts
Major Issues
Major recovery errors; most files incorrect/missing. If commands are correct but no files are provided with submission, automatic 15 (less if commands are incorrect).
0 pts
No Recovery
Files not recovered.
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
Objective clearly stated and well supported by evidence.
2.5 pts
Some Reasoning
Objective stated but weakly supported.
0 pts
Not Addressed
Objective not mentioned.
5 pts
Total Points: 100