# clone directory structure, like git clone would for a repo
# usage: <filename>.ps1 remote destination

# check if destination specified
# if specified, CD to that directory and carry on
# if not specified, work in current working directory

if ($args[1]) {
$isDest = $true
}

if ($isDest) {
$startDir = Get-Location
cd $args[1]
}

# get remote directory path from args
$remoteDir = $args[0]

# get current directory
$currDir = Get-Location

# determine name of dir from path
$dirName = Split-Path -Path $remoteDir -Leaf

# check if destination folder already exists, if not, make it
if (-NOT (Test-Path -Path $dirName)) {
mkdir $dirName
}

# use xcopy to copy directory structure from remoteDir to dirName
# xcopy <source> <dest> /t /e
xcopy $remoteDir $dirName /t /e

# if destination was specified, return to the original folder
if ($isDest) {
cd $startDir
}