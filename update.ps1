
# Define the folder path and URL as variables
$folderPath = "C:\tools"
$fileUrl = "https://dl.google.com/tag/s/appguid%3D%7B8A69D345-D564-463C-AFF1-A69D9E530F96%7D%26iid%3D%7B9C855294-B14E-0F23-BD62-52BBF4E9A2C0%7D%26lang%3Den-GB%26browser%3D5%26usagestats%3D1%26appname%3DGoogle%2520Chrome%26needsadmin%3Dprefers%26ap%3Dx64-statsdef_1%26brand%3DCHBF%26installdataindex%3Dempty/update2/installers/ChromeSetup.exe"
$fileName = "ChromeSetup.exe"
$fileDestination = Join-Path -Path $folderPath -ChildPath $fileName

# Check if the folder exists, if not, create it
if (-not (Test-Path -Path $folderPath)) {
    New-Item -ItemType Directory -Path $folderPath
}

# Download the file from the URL to the specified folder
Invoke-WebRequest -Uri $fileUrl -OutFile $fileDestination

Write-Host "File downloaded to $fileDestination"
