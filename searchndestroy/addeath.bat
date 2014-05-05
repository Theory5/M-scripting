@echo off

REM This batch file is designed to remove malicious software with little to no user intervention.
REM this file will install Malwarebytes, run rkill to kill and known running malicious processes, and then uses REM malwarebytes to remove the threat and generate a log file.

echo Warning: Unauthorized use may result in accidental death, destruction, dismemberment, and/or pregnancy! Use at own risk.
PAUSE
REM Empty temp folder 

echo y | del /F "%temp%" 

REM This section will run rkill before it runs the ad-aware scanner, to kill any malicious processes.Rkill has REM been renamed.

echo y | START /wait rk2.exe > "adaware/out/rkillout.txt" | type "adaware/out/rkillout.txt"

REM Run Ad-aware scanner

echo This will run a full scan + delete branch on your machine. DO NOT USE OTHER PROGRAMS while this is running!
PAUSE

cd adaware

START /wait adawarescan.exe --updatedefs --updateapp > "out/update.txt" | type "out/update.txt"

START /wait adawarescan.exe --full --delete > "out/adware.txt" | type "out/adware.txt"


