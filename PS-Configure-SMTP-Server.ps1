
$SMTPSvc=new-object System.DirectoryServices.DirectoryEntry("IIS://localhost/smtpsvc/1")
$SMTPSvc.smarthost="[x.x.x.x]"
$SMTPSvc.HopCount = 15
$SMTPSvc.LogType = 1
$SMTPSvc.FullyQualifiedDomainName ="xxxxxxx.xx"
#$SMTPSvc.LogFileDirectory = $IIS_LogFileDir
#$SMTPSvc.LogFilePeriod = 4
#$SMTPSvc.LogFileTruncateSize = 52428800
#$SMTPSvc.LogExtFileFlags = 4194303
#$SMTPSvc.SmartHostType=2
#$SMTPSvc.SmtpAqueueWait=-1
#$SMTPSvc.SmtpAuthTimeout=0
#$SMTPSvc.SmtpBdatTimeout=0
#$SMTPSvc.SmtpConnectTimeout=0
#$SMTPSvc.SmtpDataTimeout=0
#$SMTPSvc.SmtpDisableRelay=$True
#$SMTPSvc.SmtpDomainValidationFlags=-1
#$SMTPSvc.SmtpDotStuffPickupDirFiles=$True
#$SMTPSvc.SmtpDSNLanguageID=0
#$SMTPSvc.SmtpDSNOptions=0
#$SMTPSvc.SmtpEventlogLevel=-1
#$SMTPSvc.SmtpHeloNoDomain=$True
#$SMTPSvc.SmtpHeloTimeout=0
#$SMTPSvc.SmtpInboundCommandSupportOptions=7697601
#$SMTPSvc.SmtpIpRestrictionFlag=1
#$SMTPSvc.SmtpLocalDelayExpireMinutes=720
#$SMTPSvc.SmtpLocalNDRExpireMinutes=2880
#$SMTPSvc.SmtpMailFromTimeout=0
#$SMTPSvc.SmtpMailNoHelo=$True
#$SMTPSvc.SmtpMaxRemoteQThreads=-1
#$SMTPSvc.SmtpOutboundCommandSupportOptions=7
#$SMTPSvc.SmtpRcptToTimeout=0
#$SMTPSvc.SmtpRemoteDelayExpireMinutes=720
#$SMTPSvc.SmtpRemoteNDRExpireMinutes=2880
#$SMTPSvc.SmtpRemoteProgressiveRetry=("15","30","60","240")
#$SMTPSvc.SmtpRemoteRetryThreshold=3
#$SMTPSvc.SmtpRsetTimeout=0
#$SMTPSvc.SmtpSaslTimeout=0
#$SMTPSvc.SmtpSSLCertHostnameValidation=$True
#$SMTPSvc.SmtpSSLRequireTrustedCA=$True
#$SMTPSvc.SmtpTurnTimeout=0
#$SMTPSvc.SmtpUseTcpDns=-1
#$SMTPSvc.UpdatedDefaultDomain=$True
$SMTPSvc.UpdatedFQDN=$True
$SMTPSvc.Win32Error=0 
$SMTPSvc.setinfo()
$smtpconfig.RelayIPList = @(24,0,0,128,32,0,0,128,60,0,0,128,68,0,0,128,1,0,0,0,76,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,2,0,0,0,1,0,0,0,4,0,0,0,0,0,0,0,76,0,0,128,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,255,255,255)
$smtpconfig.put()
Set-Service SMTPSVC -startuptype "automatic"
Restart-Service SMTPSVC