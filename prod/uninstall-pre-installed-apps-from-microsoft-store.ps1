﻿<#﻿
.SYNOPSIS
    Uninstall pre-installed apps from Microsoft Store

.DESCRIPTION
    This PowerShell -script will uninstall preinstalled apps from Windows 10 and later. Check list of these apps from GitHub.
    Uninstallation will happens per system context.
    Platform: Windows 10 and later.
    NOTE: Please check instructions from GitHub before deploying this script.

.VERSION
    20250311

.AUTHOR
    Jan Parttimaa (https://github.com/janparttimaa/uninstall-pre-installed-apps-from-microsoft-store)

.COPYRIGHT
    © 2024-2025 Jan Parttimaa. All rights reserved.

.LICENSE
    This script is licensed under the MIT License.
    You may obtain a copy of the License at https://opensource.org/licenses/MIT

.RELEASE NOTES
    20240316 - Initial release
    20250311 - Refresh update to the script.

.EXAMPLE
    powershell.exe -ExecutionPolicy Bypass -File .\uninstall-pre-installed-apps-from-microsoft-store.ps1
    This example is how to run this script running Windows PowerShell. This is also the command that needs to be use when deploying it via Microsoft Configuration Manager.
#>

# Define variables.
$appname = @(
        # OneNote for Windows 10
        "Microsoft.Office.OneNote"
        # Mail and Calendar
        "microsoft.windowscommunicationsapps"
        # Cortana
        "Microsoft.549981C3F5F10"
        # Get Help
        "Microsoft.GetHelp"
        # 3D Viewer
        "Microsoft.Microsoft3DViewer"
        # Microsoft 365 (Office)
        "Microsoft.MicrosoftOfficeHub"
        # Solitaire & Casual Games
        "Microsoft.MicrosoftSolitaireCollection"
        # Mixed Reality Portal
        "Microsoft.MixedReality.Portal"
        # People
        "Microsoft.People"
        # Skype
        "Microsoft.SkypeApp"
        # Store Purchase App
        "Microsoft.StorePurchaseApp"
        # VP9 Video Extensions
        "Microsoft.VP9VideoExtensions"
        # Microsoft Pay
        "Microsoft.Wallet"
        # Web Media Extensions
        "Microsoft.WebMediaExtensions"
        # Webp Image Extensions
        "Microsoft.WebpImageExtension"
        # Feedback Hub
        "Microsoft.WindowsFeedbackHub"
        # Xbox Game UI
        "Microsoft.Xbox.TCUI"
        # Xbox
        "Microsoft.XboxApp"
        "Microsoft.GamingApp"
        "Microsoft.XboxSpeechToTextOverlay"
        # Xbox Game Bar
        "Microsoft.XboxGamingOverlay"
        "Microsoft.XboxGameOverlay"
        # Xbox Identity Provider
        "Microsoft.XboxIdentityProvider"
        # Phone Link
        "Microsoft.YourPhone"
        # Groove Music / Windows Media Player
        "Microsoft.ZuneMusic"
        # Movies & TV
        "Microsoft.ZuneVideo"
        # Microsoft Clipchamp
        "Clipchamp.Clipchamp"
        # Microsoft To Do
        "Microsoft.Todos"
        # Dev Home
        "Microsoft.Windows.DevHome"
        # News
        "Microsoft.BingNews"
        # Microsoft Teams Personal
        "MicrosoftTeams"
        # Microsoft Whiteboard
        "Microsoft.Whiteboard"
        # Power Automate
        "Microsoft.PowerAutomateDesktop"
        # Quick Assist
        "MicrosoftCorporationII.QuickAssist"
        # Paint 3D
        "Microsoft.MSPaint"
    )

# Starting uninstallation.
Write-Host "Uninstalling defined pre-installed Microsoft Store apps..."
Start-Sleep -Seconds 5
    
# Remove apps from current user.
ForEach($app in $appname){
Get-AppxPackage -Name $app | Remove-AppxPackage -Verbose -ErrorAction SilentlyContinue
}

# Remove apps from all users. Some apps that will be uninstalled might need soft reboot so they will be completely uninstalled.
ForEach($app in $appname){
Get-AppxPackage -Allusers -Name $app | Remove-AppxPackage -Allusers -Verbose -ErrorAction SilentlyContinue
}

# Remove apps from provisioned apps list so they don't reinstall on new users.
ForEach($app in $appname){
Get-AppxProvisionedPackage -Online | where {$_.PackageName -like $app} | Remove-AppxProvisionedPackage -Online -Verbose -ErrorAction SilentlyContinue
}

# Closing script after 20 seconds delay.
Write-Host "Uninstallation done. Closing script..."
Start-Sleep -Seconds 20