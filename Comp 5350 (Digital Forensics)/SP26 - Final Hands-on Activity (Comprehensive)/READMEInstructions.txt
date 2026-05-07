SP26 - Final Hands-on Activity (Comprehensive)
Due Apr 21 at 10pm Points 100 Questions 3 Available Apr 17 at 8am - Apr 21 at 10pm Time Limit None


Instructions

Submission Instructions (No Exceptions)
Download and Extract the Provided ZIP File
You will receive a ZIP file that contains the full submission template (LastName_FirstName_FinalDF_SP26.zip Download LastName_FirstName_FinalDF_SP26.zip). After extracting it, you will see one main folder.
Rename this main folder exactly as follows: LastName_FirstName_FinalDF_SP26 (replace LastName and FirstName with your last and first name)
If you fail to rename it correctly, you are already starting on the wrong foot.

Locate the Question Folders
Inside the main folder, you will find a separate subfolder for each topic.
Each subfolder contains a word document template. You must write your answer for that specific question directly in the provided template. Do not change the structure of the template. 

Use Only the Provided Templates
Your answers will only be accepted if they are written in the provided templates.
Do not create new files, do not rename the subfolders, and do not rearrange the directory structure.

Insert Your Answers and Evidence Correctly
For each question:

Write your answer in the designated template.

Include required proof of your findings, including:

Screenshots of your commands with visible outputs. Provide a brief explanation of the commands used. 

Recovered files (actual files, not screenshots of them).

Submitting the original recovered files is mandatory for all questions that require you to provide evidence.

If your proof is weak, missing, or placed in the wrong folder, expect your answer to be marked incomplete.

Prepare Your Final Submission
After all answers and evidence are correctly placed:

Convert all the work document templates to PDF file before submitting. 
Zip the renamed main folder (LastName_FirstName_FinalDF_SP26). Again, replace LastName and FirstName with your last and first name.

Do not zip subfolders individually.

Maintain the exact original folder structure.

Before Uploading to Canvas
You must verify the following before submitting:

All answers are in the correct templates and format.

All screenshots and recovered files are in the correct question folders.

Your final ZIP file opens properly and is fully accessible.

All the files within the subfolders are fully accessible, decoded and not password-protected. 
If your ZIP file or any other subfiles cannot be opened, are corrupted, or are missing required content, you will receive a zero. No exceptions.

This quiz was locked Apr 21 at 10pm.
Attempt History
Attempt	Time	Score
LATEST	Attempt 1	Time:4,413 minutes	Score:100 out of 100
 Correct answers are hidden.
Score for this quiz: 100 out of 100
Submitted Apr 21 at 11:59am
This attempt took 4,413 minutes.
 
The names, aliases, and descriptions presented in this content are entirely fictitious and created solely for illustrative purposes. Any resemblance to actual persons, living or deceased, businesses, organizations, or real-life events is purely coincidental. This material is not intended to imply or suggest any real-world association or involvement in unlawful activities.

The team at a regional transmission operator, East River Power Authority (ERPA), has developed their weekly operations schedule for describing peak load windows, maintenance outages, EMS/SCADA backup times, and remote access rules. This is a critical information and must be kept confidential and not be accessed by anyone outside the operator personal. Anyone with that schedule can identify hours with the weakest operational margin and the best windows for undetected changes to relays and configurations. 

Yesterday, ERPA’s security team detected suspicious traffic from a workstation assigned to a junior engineer, Nancy Wheeler, who had access to the schedule as part of her responsibilities. Network monitoring flagged repeated uploads of harmless-looking media files from Nancy’s workstation to an external file sharing site during off-hours.  

Internal investigators cloned Nancy’s workstation and seized a collection of files from her workstation.  

You are given a forensic copy of the files from the suspect’s workstation, all in a single Zip format file (DiskImage-NancyWheeler.zip Download DiskImage-NancyWheeler.zip).  While the files appear normal, you will need your forensics skills to verify and determine if the operational schedule has been compromised. You must determine: 

Part 1: Whether any of the provided files contain hidden data  

Part 2: Whether any of the files have protected info? If so, how the password scheme works? 

Part 3: Whether the recovered content is indeed sensitive power system material? 

 
NTFS Forensics: Insider Leak Investigation 
You are part of a digital forensics response team investigating a suspected insider data leak at a healthcare analytics company. 

A system administrator is believed to have accessed sensitive internal research related to Project Helix and may have attempted to exfiltrate this data outside the organization. 

A forensic disk image has been acquired from the suspect’s workstation: 

InsiderLeak_NTFS.ddLinks to an external site.

Your task is to analyze the disk image and determine, what happened? how it happened? and whether the suspect acted maliciously or with another motive 

You may use: Autopsy, Sleuth Kit 

 
Part 1: Disk and File System Analysis 
How many partitions exist on the disk image?
What file system is used on each relevant partition?
Which partition appears to contain primary user activity?
Are there any indications of unused or unallocated space that may contain recoverable data? 
Part 2: Sensitive File Identification 
What files are associated with Project Helix?
Are any files disguised or misleading based on their names?
Which files appear to contain sensitive or internal information?
What evidence suggests these files were important to the investigation? 
Part 3: Timeline and Metadata Analysis 
Are there inconsistencies in file timestamps?
Which files show evidence of timestamp manipulation?
How do these inconsistencies impact your interpretation of events?
What does this suggest about the suspect’s behavior? 
Part 4: Hidden and Obfuscated Data 
Is there evidence of hidden data within any files?
Which file contains hidden or embedded data?
What is the content of the hidden data?
Why would this method be used instead of storing data normally? 
Part 5: Evidence of Data Exfiltration 
Is there evidence of external device usage (e.g., USB)?
Are there indications of command-line data transfer?
Is there evidence of cloud-based file transfer or uploads?
Based on available evidence, what method was most likely used for exfiltration? 
Part 6: Archive and File Recovery 
Was an archive file created on the system?
Is there evidence that the archive was deleted or corrupted?
What files were likely included in the archive?
What does this suggest about the intent to exfiltrate data? 
 
Part 7: Attribution and User Activity 
Which user account is most strongly associated with the activity?
Is there evidence of multiple users interacting with the data?
Are any user accounts acting as noise or misdirection?
Can the activity be confidently attributed to a single user? Explain.  
Part 8: Intent Analysis (Critical Thinking) 
Does the evidence suggest malicious intent or an alternative motive (e.g., whistleblowing)?
What evidence supports each interpretation?
What contradictions exist in the data?
Can you definitively determine intent? Why or why not? 
 
The names, aliases, and descriptions presented in this content are entirely fictitious and created solely for illustrative purposes. Any resemblance to actual persons, living or deceased, businesses, organizations, or real-life events is purely coincidental. This material is not intended to imply or suggest any real-world association or involvement in unlawful activities.

Network Forensics Investigation


Objective:

Your task is to analyze network traffic logs to investigate a potential data breach. Using captured network traffic files, you will sequentially examine DNS, HTTP, and FTP protocols to answer key forensic questions about the incident. Your goal is to identify the malicious activities, reconstruct the sequence of events, and recover evidence.


Scenario:

A confidential employee list file has been leaked. An investigation reveals that a malicious website was accessed to obtain this file. Additionally, subsequent activity on an FTP server was detected, involving sensitive files and instructions.

You are provided with network traffic logs (FinalCapture.pcap Download FinalCapture.pcap) that include DNS, HTTP, and FTP traffic.


Your Tasks:
Part 1: DNS Analysis

Identify the domain name of the malicious website visited.

Find the IP address of the website resolved via DNS.

Find the IP and MAC address of the device used to make the DNS query

Part 2: HTTP Analysis

Using HTTP protocol analysis, answer the following:

Determine the operating system (OS) of the client device.

Find the full URL used to download the confidential employee list file.

Identify the timestamp when the download of the employee list file was successfully completed.

List the employee details found in the confidential employee list file.

Part 3: FTP Analysis

Using FTP protocol analysis, answer the following:

Identify all the user credentials (username) used to log in and the timestamp of successful login to the FTP server.

Identify the timestamp at which the README.txt file was successfully downloaded.

Examine and share a screenshot of the txt file.

Recover any subsequent files found in the FTP traffic.

Provide the screenshot of final file You will have to perform decryption if necessary. Provide the hashes of decrypted and encrypted files (if a file is encrypted).

 


Deliverables:

Report Document:

A written report answering all the above questions. Include annotated screenshots from your analysis tool (e.g., Wireshark) to support your findings (Use the provided template)

Recovered Evidence:

Submit the following recovered files in the corresponding folder (use the template):

Screenshot of the confidential employee list file.

The README.txt file.

Any subsequent files obtained through the FTP analysis.

 
The names, aliases, and descriptions presented in this content are entirely fictitious and created solely for illustrative purposes. Any resemblance to actual persons, living or deceased, businesses, organizations, or real-life events is purely coincidental. This material is not intended to imply or suggest any real-world association or involvement in unlawful activities.
Insider Data Theft at Apex Financial Group 
You have been hired as a digital forensic analyst by Apex Financial Group to investigate a suspected internal data breach. 

Security monitoring detected unusual outbound activity from a finance workstation used by multiple employees. The system was isolated, and a live memory image was captured before shutdown. 

You are provided only with: 

ApexFG_Incident1.memLinks to an external site.

Your job is to determine: 

What happened on the system  
Which user was involved  
What data was accessed or staged  
Whether data exfiltration occurred 
 
Insider Data Theft at Apex Financial Group 
Part 1: Initial Analysis 
What is the operating system profile of the memory image? 
What processes were running at the time of acquisition? 
Identify at least one process that appears suspicious. Explain why. 
Part 2: User & Execution Activity 
What commands were executed on the system? 
Is there evidence of file copying or staging? 
Is there evidence of file compression? Provide details. 
Part 3: File and Artifact Discovery 
Identify sensitive financial files referenced in memory. 
Is there evidence of a staging directory? If so, where? 
Was an archive file created? What is its name and location? 
Part 4: Suspicious Process Analysis 
Identify any process attempting to mimic a legitimate system process. 
Why is this process suspicious? Be specific. 
What is the execution path of this process? 
Part 5: Network Activity 
Were there any active or recent network connections?  
Identify any suspicious external IP addresses.  
Which process is associated with the network activity? 
Part 6: User Attribution 
Which users are present in the memory image?  
Which user is most likely associated with the suspicious activity?  
What evidence supports your conclusion? 
Part 7: Persistence & System Modification 
Is there evidence of persistence mechanisms?  
Identify any suspicious registry entries and explain their purpose 
Part 8: Memory-Only Evidence 
Is there evidence of unsaved or in-memory text indicating intent?  
What does this text suggest about user actions? 
Part 9: Correlation & Timeline  
Reconstruct the sequence of events leading to the incident.  
What files were targeted and why?  
What tools were used in the activity?  
Was data exfiltration attempted or completed? Explain.  
Was the activity likely intentional or accidental? Justify your answer. 
 
Question 1
100 / 100 pts
Upload your work
You must verify the following before submitting:

All answers are in the correct templates and format.

All screenshots and recovered files are in the correct question folders.

Your final ZIP file opens properly and is fully accessible.

All the files within the subfolders are fully accessible, decoded and not password-protected. 
If your ZIP file or any other subfiles cannot be opened, are corrupted, or are missing required content, you will receive a zero. No exceptions.