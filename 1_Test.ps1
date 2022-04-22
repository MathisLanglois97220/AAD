#!/bin/sh
#ML

echo " * * * * Demarrage effectif * * * * " 

#Get-Command -Module AzureAD | Out-File C:\Users\user\Desktop\WS\Command.txt

Get-AzADUser


function Set-RemoteRegistryValue {
    param(
        #[ValidateNotNull()]
        #[System.Management.Automation.PSCredential]
        #[System.Management.Automation.Credential()]
        #$Credential = [System.Management.Automation.PSCredential]::Empty
    )
        #$null = Invoke-Command -ComputerName $ComputerName -ScriptBlock {
        #    Set-ItemProperty -Path $using:Path -Name $using:Name -Value $using:Value
        #} -Credential $Credential
        
        #Connect-AzureAD -Credential $Credential
        Connect-AzureAD
        
}

$remoteKeyParams = @{
    Name = 'EnableRemoteManagement'
}
Set-RemoteRegistryValue
#Set-RemoteRegistryValue -Credential (Get-Credential)





#Set-RemoteRegistryValue @remoteKeyParams -Credential (Get-Credential)
