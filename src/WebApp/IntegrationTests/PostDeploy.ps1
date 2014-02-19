.\nunit-console.exe .\IntegrationTests.dll
Copy-Item TestResult.xml C:\Projects\ContinuousDeliveryTest-TestResults
$clnt = new-object System.Net.WebClient
$clnt.DownloadData("http://localhost:8099/guestAuth/action.html?add2Queue=ContinuousDeliveryTest_ImportIntegrationTestResults")
