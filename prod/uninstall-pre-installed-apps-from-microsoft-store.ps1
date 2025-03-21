<#﻿
.SYNOPSIS
    Uninstall pre-installed apps from Microsoft Store

.DESCRIPTION
    This PowerShell -script will uninstall preinstalled apps from Windows 10 and later. Check list of these apps from GitHub.
    Uninstallation will happens per system context.
    Platform: Windows 10 and later.
    NOTE: Please check instructions from GitHub before deploying this script.

.VERSION
    20250321

.AUTHOR
    Jan Parttimaa (https://github.com/janparttimaa/uninstall-pre-installed-apps-from-microsoft-store)

.COPYRIGHT
    © 2024-2025 Jan Parttimaa. All rights reserved.

.LICENSE
    This script is licensed under the MIT License.
    You may obtain a copy of the License at https://opensource.org/licenses/MIT

.RELEASE NOTES
    20240316 - Initial release.
    20250311 - Refresh update to the script.
    20250321 - Set variables to alphabetical order based on application name and added Copilot and News -apps.

.EXAMPLE
    powershell.exe -ExecutionPolicy Bypass -File .\uninstall-pre-installed-apps-from-microsoft-store.ps1
    This example is how to run this script running Windows PowerShell. This is also the command that needs to be use when deploying it via Microsoft Configuration Manager.
#>

# Define variables.
$appname = @(
    # 3D Viewer
    "Microsoft.Microsoft3DViewer"
    # Copilot
    "Microsoft.Copilot"
    # Cortana
    "Microsoft.549981C3F5F10"
    # Dev Home
    "Microsoft.Windows.DevHome"
    # Feedback Hub
    "Microsoft.WindowsFeedbackHub"
    # Get Help
    "Microsoft.GetHelp"
    # Groove Music / Windows Media Player
    "Microsoft.ZuneMusic"
    # Mail and Calendar
    "microsoft.windowscommunicationsapps"
    # Microsoft 365 (Office) / Microsoft 365 Copilot
    "Microsoft.MicrosoftOfficeHub"
    # Microsoft Clipchamp
    "Clipchamp.Clipchamp"
    # Microsoft Pay
    "Microsoft.Wallet"
    # Microsoft Reality Portal
    "Microsoft.MixedReality.Portal"
    # Microsoft Teams Personal
    "MicrosoftTeams"
    # Microsoft To Do
    "Microsoft.Todos"
    # Microsoft Whiteboard
    "Microsoft.Whiteboard"
    # Movies & TV
    "Microsoft.ZuneVideo"
    # News
    "Microsoft.BingNews"
    # OneNote for Windows 10
    "Microsoft.Office.OneNote"
    # Paint 3D
    "Microsoft.MSPaint"
    # People
    "Microsoft.People"
    # Phone Link / Your Phone
    "Microsoft.YourPhone"
    # Power Automate
    "Microsoft.PowerAutomateDesktop"
    # Quick Assist
    "MicrosoftCorporationII.QuickAssist"
    # Skype
    "Microsoft.SkypeApp"
    # Solitaire & Casual Games
    "Microsoft.MicrosoftSolitaireCollection"
    # Store Purchase App
    "Microsoft.StorePurchaseApp"
    # VP9 Video Extensions
    "Microsoft.VP9VideoExtensions"
    # Web Media Extensions
    "Microsoft.WebMediaExtensions"
    # Webp Image Extensions
    "Microsoft.WebpImageExtension"
    # Xbox
    "Microsoft.XboxApp"
    "Microsoft.GamingApp"
    "Microsoft.XboxSpeechToTextOverlay"
    # Xbox Game Bar
    "Microsoft.XboxGamingOverlay"
    "Microsoft.XboxGameOverlay"
    # Xbox Game UI
    "Microsoft.Xbox.TCUI"
    # Xbox Identity Provider
    "Microsoft.XboxIdentityProvider"
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