# print all installed apps in file
wmic # as administrator

### at 'wmic:root\cl' prompt
/output:C:\InstallList.txt product get name,version
