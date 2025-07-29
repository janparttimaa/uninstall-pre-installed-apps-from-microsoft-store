# Uninstall pre-installed apps from Microsoft Store
This PowerShell -script will uninstall following preinstalled apps from Windows 10 and later:
| Application Name                   | Package Name                                 | Notes
|------------------------------------|----------------------------------------------|----------------------------------------------|
| 3D Viewer                          | Microsoft.Microsoft3DViewer                  |
| [Copilot](https://learn.microsoft.com/en-us/windows/client-management/manage-windows-copilot)                            | Microsoft.Copilot                            |
| Cortana                            | Microsoft.549981C3F5F10                      | [Application deprecated by Microsoft](https://support.microsoft.com/en-us/topic/end-of-support-for-cortana-d025b39f-ee5b-4836-a954-0ab646ee1efa).
| Dev Home                           | Microsoft.Windows.DevHome                    | [Application deprecated by Microsoft](https://www.windowscentral.com/software-apps/windows-11/microsoft-is-killing-this-handy-windows-11-feature-for-developers-less-than-two-years-after-its-debut).
| Feedback Hub                       | Microsoft.WindowsFeedbackHub                 |
| Get Help                           | Microsoft.GetHelp                            |
| Groove Music / Windows Media Player| Microsoft.ZuneMusic                          |
| Mail and Calendar                  | microsoft.windowscommunicationsapps          | [Application deprecated by Microsoft](https://support.microsoft.com/en-us/office/outlook-for-windows-the-future-of-mail-calendar-and-people-on-windows-11-715fc27c-e0f4-4652-9174-47faa751b199).
| Maps                               | **Microsoft.WindowsMaps**                    | **TBA**
| Microsoft 365 (Office) / Microsoft 365 Copilot                                    | Microsoft.MicrosoftOfficeHub                 |
| Microsoft Clipchamp                | Clipchamp.Clipchamp                          |
| Microsoft Pay                      | Microsoft.Wallet                             | [Application deprecated by Microsoft](https://en.wikipedia.org/wiki/Microsoft_Pay).
| Microsoft Reality Portal           | Microsoft.MixedReality.Portal                | [Application deprecated by Microsoft](https://learn.microsoft.com/en-us/windows/whats-new/deprecated-features).
| Microsoft Teams Personal           | MicrosoftTeams                               | [Application deprecated by Microsoft](https://www.theverge.com/2023/6/15/23761859/microsoft-windows-11-teams-chat-integration-deprecation).
| Microsoft To Do                    | Microsoft.Todos                              |
| Microsoft Whiteboard               | Microsoft.Whiteboard                         |
| Movies & TV                        | Microsoft.ZuneVideo                          | [Purchacing Movies and TV shows have been deprecated](https://support.microsoft.com/en-us/windows/watch-movies-and-tv-shows-on-the-microsoft-movies-tv-app-59328422-053f-30b3-843a-f8774567a85e).
| News                               | Microsoft.BingNews                           |
| OneNote for Windows 10             | Microsoft.Office.OneNote                     | [Application deprecated by Microsoft](https://support.microsoft.com/en-us/office/what-is-happening-to-onenote-for-windows-10-2b453bfe-66bc-4ab2-9118-01e7eb54d2d6).
| Paint 3D                           | Microsoft.MSPaint                            | [Application deprecated by Microsoft](https://learn.microsoft.com/en-us/windows/whats-new/deprecated-features-resources#paint-3d).
| People                             | Microsoft.People                             | [Application deprecated by Microsoft](https://support.microsoft.com/en-us/office/outlook-for-windows-the-future-of-mail-calendar-and-people-on-windows-11-715fc27c-e0f4-4652-9174-47faa751b199).
| Phone Link / Your Phone            | Microsoft.YourPhone                          |
| Power Automate                     | Microsoft.PowerAutomateDesktop               |
| Quick Assist                       | MicrosoftCorporationII.QuickAssist           |
| Skype                              | Microsoft.SkypeApp                           | [Application deprecated by Microsoft](https://support.microsoft.com/en-us/skype/skype-is-retiring-in-may-2025-what-you-need-to-know-2a7d2501-427f-485e-8be0-2068a9f90472).
| Solitaire & Casual Games           | Microsoft.MicrosoftSolitaireCollection       |
| Store Purchase App                 | Microsoft.StorePurchaseApp                   |
| Tips                               | **Microsoft.Getstarted**                     | **TBA**
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
