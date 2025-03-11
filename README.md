# Uninstall pre-installed apps from Microsoft Store
This PowerShell -script will uninstall following preinstalled apps from Windows 10 and later:
| Application Name                   | Package Name                                 |
|------------------------------------|----------------------------------------------|
| 3D Viewer                          | Microsoft.Microsoft3DViewer                  |
| Cortana                            | Microsoft.549981C3F5F10                      |
| Dev Home                           | Microsoft.Windows.DevHome                    |
| Feedback Hub                       | Microsoft.WindowsFeedbackHub                 |
| Get Help                           | Microsoft.GetHelp                            |
| Groove Music / Windows Media Player| Microsoft.ZuneMusic                          |
| Mail and Calendar                  | microsoft.windowscommunicationsapps          |
| Microsoft 365 (Office)             | Microsoft.MicrosoftOfficeHub                 |
| Microsoft Clipchamp                | Clipchamp.Clipchamp                          |
| Microsoft Pay                      | Microsoft.Wallet                             |
| Microsoft Reality Portal           | Microsoft.MixedReality.Portal                |
| Microsoft Teams Personal           | MicrosoftTeams                               |
| Microsoft To Do                    | Microsoft.Todos                              |
| Microsoft Whiteboard               | Microsoft.Whiteboard                         |
| Movies & TV                        | Microsoft.ZuneVideo                          |
| OneNote for Windows 10             | Microsoft.Office.OneNote                     |
| Paint 3D                           | Microsoft.MSPaint                            |
| People                             | Microsoft.People                             |
| Phone Link                         | Microsoft.YourPhone                          |
| Power Automate                     | Microsoft.PowerAutomateDesktop               |
| Quick Assist                       | MicrosoftCorporationII.QuickAssist           |
| Skype                              | Microsoft.SkypeApp                           |
| Solitaire & Casual Games           | Microsoft.MicrosoftSolitaireCollection       |
| Store Purchase App                 | Microsoft.StorePurchaseApp                   |
| VP9 Video Extensions               | Microsoft.VP9VideoExtensions                 |
| Web Media Extensions               | Microsoft.WebMediaExtensions                 |
| Webp Image Extensions              | Microsoft.WebpImageExtension                 |
| Xbox                               | Microsoft.XboxApp<br>Microsoft.GamingApp<br>Microsoft.XboxSpeechToTextOverlay |
| Xbox Game Bar                      | Microsoft.XboxGameOverlay<br>Microsoft.XboxGamingOverlay |
| Xbox Game UI                       | Microsoft.Xbox.TCUI                          |
| Xbox Identity Provider             | Microsoft.XboxIdentityProvider               |

## Instructions
- Open Command Prompt, PowerShell or Windows Terminal as Administrator and give following command:
```
powershell.exe -ExecutionPolicy Bypass -File .\uninstall-pre-installed-apps-from-microsoft-store.ps1
```
- You can also deploy this script via Intune or Configuration Manager.
- This script is suitable for situations when devices will be upgraded e.g. from Windows 10 to Windows 11 using Feature Update. On those situations, recommendation is to run this script frequently for example once per day.
- You can also use this on Windows-image created on Microsoft Deployment Toolkit (MDT) or through Configuration Manager.
- Feel free to remove apps that you want to keep instead from the script.
