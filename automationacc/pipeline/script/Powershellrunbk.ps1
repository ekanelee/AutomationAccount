# Import the module
Import-Module Az.Automation

# Set variables
$automationAccountName = "Automationaccdev" 
$resourceGroupName = "Automation-dev" 
$runbookName = "Automationrbkdev" 

# Get the Automation Account
$automationAccount = Get-AzAutomationAccount -ResourceGroupName $resourceGroupName -Name $automationAccountName

# Publish runbook

# Start the runbook
$job = Start-AzAutomationRunbook -AutomationAccountName $automationAccount.AutomationAccountName -Name $runbookName -ResourceGroupName $resourceGroupName

# Write host a message
Write-Host "Hello from automation. The runbook $runbookName has been started. The job id is $($job.JobId)"