.\nunit-console.exe .\IntegrationTests.dll
Copy-Item TestResult.xml "\\INFN1069-TeamC\TestResults\TestResult-$($OctopusParameters['Octopus.Project.Name']).xml"
$clnt = new-object System.Net.WebClient
$clnt.DownloadData("$($OctopusParameters['TeamCityURL'])/guestAuth/action.html?add2Queue=$($OctopusParameters['ImportTestResultsBuild'])")
