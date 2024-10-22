$version = git rev-list --count HEAD
(Get-Content ManualCICD.csproj) -replace '<Version>.*</Version>', "<Version>1.0.$version</Version>" | Set-Content ManualCICD.csproj
git add ManualCICD.csproj
git commit -m "Update version to 1.0.$version"
