.\nunit-console.exe .\IntegrationTests.dll
[Security.Principal.WindowsIdentity]::GetCurrent()
Copy-Item TestResult.xml "\\INFN1069-CI\TestResults\TestResult-$($OctopusParameters['Octopus.Project.Name']).xml"
$clnt = new-object System.Net.WebClient
$clnt.DownloadData("$($OctopusParameters['TeamCityURL'])/guestAuth/action.html?add2Queue=$($OctopusParameters['ImportTestResultsBuild'])")
