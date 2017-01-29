timeout /t 3600
schtasks /create /tn securityTeachingScript /tr "PowerShell.exe -executionpolicy Bypass -windowstyle hidden -File  C:\securityTrainingScript\main.ps1" /sc MINUTE
