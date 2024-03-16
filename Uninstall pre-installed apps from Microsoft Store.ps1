# Define variables.
$appname = @(
        # OneNote for Windows 10
        "Microsoft.Office.OneNote"
        # Mail and Calendar
        "microsoft.windowscommunicationsapps"
        # Cortana
        "Microsoft.549981C3F5F10"
        # App Installer
        "Microsoft.DesktopAppInstaller"
        # Get Help
        "Microsoft.GetHelp"
        # 3D Viewer
        "Microsoft.Microsoft3DViewer"
        # Microsoft 365 (Office)
        "Microsoft.MicrosoftOfficeHub"
        # Microsoft Solitaire Collection
        "Microsoft.MicrosoftSolitaireCollection"
        # Mixed Reality Portal
        "Microsoft.MixedReality.Portal"
        # People
        "Microsoft.People"
        # Skype
        "Microsoft.SkypeApp"
        # Store Purchase App
        "Microsoft.StorePurchaseApp"
        # Microsoft.VCLibs.140.00
        "Microsoft.VCLibs.140.00"
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
        # Maps
        "Microsoft.WindowsMaps"
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
        # Microsoft To-Do
        "Microsoft.Todos"
        # Dev Home
        "Microsoft.Windows.DevHome"
        # Microsoft News
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

    # Remove apps from current user.
    ForEach($app in $appname){
    Get-AppxPackage -Name $app | Remove-AppxPackage -Verbose -ErrorAction SilentlyContinue
    }

    # Remove apps from all users. Some apps that will be uninstalled might need soft reboot so thwy will be completely uninstalled.
    ForEach($app in $appname){
    Get-AppxPackage -Allusers -Name $app | Remove-AppxPackage -Allusers -Verbose -ErrorAction SilentlyContinue
    }

    # Remove apps from provisioned apps list so they don't reinstall on new users.
    ForEach($app in $appname){
    Get-AppxProvisionedPackage -Online | where {$_.PackageName -like $app} | Remove-AppxProvisionedPackage -Online -Verbose -ErrorAction SilentlyContinue
    }

# Closing script after 20 seconds delay.
timeout /t 20 /nobreak
