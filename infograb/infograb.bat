title InfoGrab

echo off

echo This script was written to run information gathering tools for malware identification and removal. Do not run unless instructed to by Information Security Services personnel. 


echo this script will now run "hijack this". Please select "I Agree" and "Ok" in the prompts that follow. After the prompts run, you will see a new text file called "hijackthis.txt".

start /wait hijackthis.exe /silentautolog

echo now this script will run tcpview. 

Pause

if exist tcpview.txt (
    del "tcpview.txt"
	)

tcpvcon.exe > tcpview.txt | type tcpview.txt

echo you have now completed the information gathering aspect of malware remediation. Please refer to the instructions for the next step. Thanks!
