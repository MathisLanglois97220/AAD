#!/bin/sh
#ML

echo " * * * Demarrage * * * " 

#Connection to AzAD

function Set-RemoteRegistryValue {
    param(

    )
        Connect-AzureAD -credential $M365
}
#Set-RemoteRegistryValue


#IAM security

function Get-Conditionnal-Acces {
    param(
        $Users
    )
    
    Foreach( $element in $Users){
        $ID = $($element.Id)
        echo $ID
        #Get-AzureADMSConditionalAccessPolicy -PolicyId 
    }
}

$ActualUsers = @{
    Users = Get-AzADUser 
}

Get-Conditionnal-Acces @ActualUsers

 
#Disconnect

Disconnect-AzureAD

echo " * * * Deconnexion * * * " 


