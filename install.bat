mkdir C:\securityTrainingScript
attrib +h C:\securityTrainingScript /s /d
COPY .\main.ps1 C:\securityTrainingScript\main.ps1
COPY .\delayedRun.ps1 C:\securityTrainingScript\delayedRun.ps1

PowerShell.exe -executionpolicy remotesigned -Command "start-process PowerShell.exe '-executionpolicy remotesigned -File C:\securityTrainingScript\delayedRun.ps1 -windowstyle hidden'" -windowstyle hidden

