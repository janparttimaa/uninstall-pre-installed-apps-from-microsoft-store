# Uninstall pre-installed apps from Microsoft Store
This PowerShell -script will uninstall following preinstalled apps from Windows 10 and later:
- OneNote for Windows 10 (Microsoft.Office.OneNote)
- Mail and Calendar (microsoft.windowscommunicationsapps)
- Cortana (Microsoft.549981C3F5F10)
- Get Help (Microsoft.GetHelp)
- 3D Viewer (Microsoft.Microsoft3DViewer)
- Microsoft 365 (Office) (Microsoft.MicrosoftOfficeHub)
- Solitaire & Casual Games (Microsoft.MicrosoftSolitaireCollection)
- Microsoft Reality Portal (Microsoft.MixedReality.Portal)
- People (Microsoft.People)
- Skype (Microsoft.SkypeApp)
- Store Purchase App (Microsoft.StorePurchaseApp)
- VP9 Video Exrensions (Microsoft.VP9VideoExtensions)
- Microsoft Pay (Microsoft.Wallet)
- Web Media Extensions (Microsoft.WebMediaExtensions)
- Webp Image Extensions (Microsoft.WebpImageExtension)
- Feedback Hub (Microsoft.WindowsFeedbackHub)
- Xbox Game UI (Microsoft.Xbox.TCUI)
- Xbox (Microsoft.XboxApp, Microsoft.GamingApp, Microsoft.XboxSpeechToTextOverlay)
- Xbox Game Bar (Microsoft.XboxGameOverlay, Microsoft.XboxGamingOverlay)
- Xbox Indentity Provider (Microsoft.XboxIdentityProvider)
- Phone Link (Microsoft.YourPhone)
- Groove Music / Windows Medial Player (Microsoft.ZuneMusic)
- Movies & TV (Microsoft.ZuneVideo)
- Microsoft Clipchamp (Clipchamp.Clipchamp)
- Microsoft To Do (Microsoft.Todos)
- Dev Home (Microsoft.Windows.DevHome)
- News (Microsoft.BingNews)
- Microsoft Teams Personal (MicrosoftTeams)
- Microsoft Whiteboard (Microsoft.Whiteboard)
- Power Automate (Microsoft.PowerAutomateDesktop)
- Quick Assist (MicrosoftCorporationII.QuickAssist)
- Paint 3D (Microsoft.MSPaint)

## Instructions
- Open Command Prompt, PowerShell or Windows Terminal as Administrator and give following command:
```
powershell.exe -ExecutionPolicy Bypass -File .\Uninstall.pre-installed.apps.from.Microsoft.Store.ps1
```
- You can also deploy this script via Intune or Configuration Manager.
- This script is suitable for situations when devices will be upgraded e.g. from Windows 10 to Windows 11 using Feature Update. On those situations, recommendation is to run this script frequently for example once per day.
- You can also use this on Windows-image created on Microsoft Deployment Toolkit (MDT) or through Configuration Manager.
- Feel free to remove apps that you want to keep instead from the script.
