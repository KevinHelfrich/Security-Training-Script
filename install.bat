mkdir C:\securityTrainingScript
attrib +h C:\securityTrainingScript /s /d
COPY .\main.ps1 C:\securityTrainingScript\main.ps1

schtasks /create /tn securityTeachingScript /tr "PowerShell.exe -executionpolicy remotesigned -windowstyle hidden -File  C:\securityTrainingScript\main.ps1" /sc MINUTE
