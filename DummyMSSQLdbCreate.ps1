
[string]$dninstance= '.\SQLEXPRESS'
[string]$dbname= "testdb"
[string]$dbtblname= "test"
[string]$dbuser= "sa"
[string]$dbpassword= "123456"
[int]$insertcount= 100000
[int]$duprow= 100
[int]$interval= 10000

$createquery=" 
 CREATE DATABASE [$dbname]
GO " 

$tablecreatequery=" USE [$dbname]
GO
/****** Object:  Table [dbo].[$dbtblname]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[$dbtblname]([a] [varchar](max) NULL,[b] [nvarchar](max) NULL,[c] [varchar](max) NULL,[d] [varchar](max) NULL,[e] [varchar](max) NULL,[f] [varchar](max) NULL,[g] [varchar](max) NULL,[aa] [varchar](max) NULL,[bb] [varchar](max) NULL,[cc] [varchar](max) NULL,[dd] [varchar](max) NULL,[ee] [varchar](max) NULL,[ff] [varchar](max) NULL,[gg] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
"

$insertquery=" 
USE [$dbname]
INSERT INTO $dbtblname 
(a,b,c,d,e,f,g,aa,bb,cc,dd,ee,ff,gg) 
VALUES ('$a','$b','$c','$d','$e','$f','$g','$aa','$bb','$cc','$dd','$ee','$ff','$gg') 
GO " 



Invoke-SQLcmd -ServerInstance $dninstance -query $createquery -U $dbuser -P $dbpassword -Database "MASTER"
Invoke-SQLcmd -ServerInstance $dninstance -query $tablecreatequery -U $dbuser -P $dbpassword -Database $dbname


For ($i=0; $i -lt $insertcount; $i++) {
[string]$a= -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})
[string]$b= -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})
[string]$c= -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})
[string]$d= -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})
[string]$e= -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})
[string]$f= -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})
[string]$g= -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})
[string]$aa= -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})
[string]$bb= -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})
[string]$cc= -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})
[string]$dd= -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})
[string]$ee= -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})
[string]$ff= -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})
[string]$gg= -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})

 


For ($i=0; $i -lt $duprow; $i++) {
Invoke-SQLcmd -ServerInstance $dninstance -query $insertquery -U $dbuser -P $dbpassword -Database $dbname 
}



-join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})+ -join ((65..90) + (97..122) | Get-Random -Count 300 | % {[char]$_})
   Start-Sleep -s $interval
 
    }
