# P4XLProps
Magisk Module to enable google's latest pixel iteration software features listed below by spoofing the device as Pixel 4 XL (codenamed Coral).  
The module spoof using latest coral's device fingerprint taken from https://git.rip/dumps/.   
Passes Safetynet (read Instructions).
## Requirements:
*Tested Custom roms* : PixelExperience(PE and PE plus), EvolutionX , Havoc, ParanoidAndoid and AOSiP Derpfest.   
(Should also work on any other custom rom using pixel's system UI with gapps installed).    

*Device*: any  
*Magisk version*: 19+



*The following features have been tested working on latest PixelExperience(PE and PE plus), EvolutionX , Havoc, ParanoidAndoid and AOSiP Derpfest and should also work on any other custom rom using pixel's system UI with gapps installed.*

- **Google assistant 2.0**  
Make sure system language is set to English(US) or English (UK).   
After installing module, clean Google app's data thereby launching assistant will ask to download additional update to enable the new assistant.

- **Google Duo portrait mode and autoframing during video calls** (enables by itself).

- **Google Photos portrait filter** to add bookeh effect on any photo with faces taken as normal before. (doesn't work with all gcams)  

- **Camera 2 API Level 3** (module v7.1+)

- **Rampant Ringer** (check Sounds-> Vibration in settings post module installation to enable).

- **Google Play Services for AR  and Playground(AR Stickers)**. (becomes installable via playstore in budget range smartphones)

- **Live Caption** (check Sounds-> Live Caption post installation).   

- **UI overhaul** for core google and some other apps. (enables by itself).  

- **Dark mode in google docs, sheets, slides, playbooks etc**.  




*The following features have been tested working on latest PixelExperience(PE and PE plus)*

- **Pokémon go live wallpaper** (Shown in Styles and Wallpapers) (PE and PE plus) (sometimes it is needed to install Pokémon wavehello app from playstore then it shows download option of Pokémon live wallpaper inside Styles & Wallpapers).  

**Note for PE and PE Plus users** - If unable to download the data required for enabling assistant,live caption or Pokémon live wallpaper, it is because of missing ngaresources.apk in recent builds which can be downloaded and installed from this link -  https://www.dropbox.com/s/ed10513o4hke8ux/NgaResources.apk?dl=0  




*The following features have not been tested*

- **Call Screening** in countries where it is rolled out. (enables by itself)  
Note: If not shown by itself in countries with this feature is rolled out, try clearing dialer data and then check inside dialer settings->Call screen to download resource and enable. 

- **AR Mode in google maps** in countries where it's available. (enables by itself)  
Note: Tap Directions, make sure you’re on the walking tab, and you should see a button next to the Start button that says Live View.  




## Instructions:
Check the security patch level of the aforementioned custom ROMs and flash the corresponding module zip from release section via magisk.
