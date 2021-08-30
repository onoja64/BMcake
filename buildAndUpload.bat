@ECHO OFF
SET /P yesno=Build and then Upload to viking-frontend-amm? [y/n]:
IF "%yesno%"=="y" GOTO Confirm
IF "%yesno%"=="Y" GOTO Confirm
GOTO End

:Confirm
call npm run build
call "C:\Program Files\Amazon\AWSCLI\bin\aws" s3 sync "./build" s3://viking-frontend-amm/ --grants read=uri=http://acs.amazonaws.com/groups/global/AllUsers --exclude "*.bat" --delete --profile vikingSwap

:END
SET /P whatever = press any button to exit...