Digital Forensics
Hands-on #4

This project consists of two parts.

Case Background

Following an ongoing cybercrime investigation, digital forensics investigators seized a laptop believed to have been used in planning a high-value theft against a private financial organization. 

At first glance, the recovered directories appeared to contain ordinary images and documents. However, initial triage suggests that these files have been deliberately manipulated using advanced steganography and concealment techniques to hide operational details about an upcoming heist. 

You have been assigned to analyze the confiscated data as part of the Auburn Incident Response Team. Your objective is to uncover any hidden information and piece together the plan behind this operation. 

Files: You should use the following Template Download Templatefor your report.

Evidence Overview 

The recovered drive contains two primary directories:

/Recovered_Images Download Recovered_Images— contains a collection of suspicious image files and a map layout grid. 
/Recovered_Documents Download Recovered_Documents— contains few files that’s believed to be somehow related to the heist. 
You are tasked with performing a forensic deep-dive into both directories to uncover and interpret any concealed evidence. 

Investigation Objectives 

Inspect the image files for signs of tampering or hidden content. The directory contains several photographs (e.g., beach.jpg, lena.bmp, mountain.jpg, nyc.jpg) along with a grid image (grid.png). 

Examine metadata and identify anomalies. Look for comments, encoded messages, or other irregular entries. 
Apply steganalysis techniques (e.g., steghide, stegseek, wordlists or other utilities) to extract hidden artifacts. Some of these files may contain fragments of a larger composite image. 
You may need to interpret hex, binary, or octal representations to recover the original ASCII text. 
Use file, xxd to analyze the structure of the file and identify hidden sections or appended data (e.g., ZIP headers such as pk\x03\x04). 
Carve and extract any concealed archives discovered within the document. 
If an archive is password-protected, test the passwords you have previously recovered from the image analysis. 
Reporting Requirements 

You need to produce a professional forensic report documenting your complete investigation. Use the provided report template. 
Your report should include: 

Answers to Key Questions:
Which files contained which Map Fragment?
What are the decoded messages contained within the images?
Which city is the target of the operation?
What is the specific location and time of the planned event?
What is the getaway vehicle model, color, and license plate associated with the operation?
Who are the individuals involved, and what are their roles or profit shares?
What is the target item of the heist?
What password(s) were used and what files were they used for? 
Conclusion — A concise summary of how your forensic analysis connects the hidden data to the suspected criminal plan. 
Prerequisites 

Install stegseek : sudo apt install -y stegseek 
Install wordlists : sudo apt install –y wordlists 
Download ‘passphrases.txt Download passphrases.txt’ from the given files 
Copy it to the directory with .txt files that the wordlist tool uses.  
sudo cp passphrases.txt /usr/share/wordlists/ 

Usage: stegseek -wl /usr/share/wordlists/passphrases.txt <stego-image> 
Install LibreOffice (if on Kali): sudo apt install libreoffice 
Recommended Tools 

stegseek, steghide, exiftool, wordlists, file, xxd, strings, and other standard Linux tools and libraries for data carving and encoding conversion. 
You can use online tools for encoding conversions  
https://gchq.github.io/CyberChef/Links to an external site. 
 

 

Scenario Reminder and Disclaimer 

All files and names in this exercise are fictional and designed solely for educational purposes. This practical exercise is intended to strengthen your understanding of steganography, file structure analysis, metadata forensics, and data recovery in a realistic investigative workflow. 

The stories, names, characters, and scenarios portrayed in this assignment are fictional. No identification with actual persons, groups, places, or products is intended or should be inferred. 

 

Rubric
Hands-On 4 Rubric
Hands-On 4 Rubric
Criteria	Ratings	Pts
This criterion is linked to a Learning OutcomeCorrect Answers & Work Shown
80 to >67.0 pts
Excellent
All answers are correct with complete work shown. All decoded messages, passphrases, and required artifacts are clearly presented and explained.
67 to >55.0 pts
Good
Mostly correct answers with minor errors or small missing components. Work is shown but may lack some detail or clarity.
55 to >40.0 pts
Satisfactory
Several correct answers, but multiple missing components (e.g., decoded messages, passphrases, or incomplete work shown).
40 to >20.0 pts
Limited
Significant number of incorrect or missing answers. Work is incomplete or lacks proper explanation/decoding steps.
20 to >0.0 pts
Poor
Minimal correct answers with little to no work shown. Major required elements missing.
0 pts
No Marks
No submission or does not address the required components.
80 pts
This criterion is linked to a Learning OutcomeMethodology & Tools Used
10 pts
Full Marks
Clear, well-documented methodology. Appropriate tools used correctly (e.g., conversions, decoding steps fully demonstrated).
7 pts
Good
Methodology is mostly clear, but missing minor steps or tool usage (e.g., incomplete conversion or decoding explanation).
5 pts
Satisfactory
Basic methodology present but lacks clarity, detail, or correct tool usage.
2 pts
Needs Improvement
Methodology is unclear or incomplete. Tools are used incorrectly or not explained.
0 pts
No Marks
No methodology or tools described.
10 pts
This criterion is linked to a Learning OutcomeConclusion
10 pts
Full Marks
Clear, concise, and accurate summary of findings. Demonstrates strong understanding of results.
7 pts
Good
Adequate summary with minor gaps in clarity or depth.
5 pts
Satisfactory
Basic conclusion present but lacks depth or clear connection to findings.
2 pts
Needs Improvement
Weak or unclear conclusion with limited relevance to results.
0 pts
No Marks
No conclusion provided.
10 pts
Total Points: 100