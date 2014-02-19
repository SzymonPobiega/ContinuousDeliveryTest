.\nunit-console.exe .\IntegrationTests.dll
Copy-Item TestResult.xml C:\Projects\ContinuousDeliveryTest-TestResults
wget -q -O- http://localhost:8099/guestAuth/action.html?add2Queue=ContinuousDeliveryTest_ImportIntegrationTestResults 2>&1 | Out-Null
