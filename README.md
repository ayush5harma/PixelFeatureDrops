# P5Props
Magisk Module to enable google's latest pixel feature drops on Custom ROMs.  
Passes Safetynet (read Instructions at the end).
## Requirements:
- Android R | *Device*: any  | *Magisk version*: 21+ | Custom ROM: One that uses pixel's system UI with gapps installed such as PixelExperience.  
  *Some tested custom ROMs* : PixelExperience(PE and PE plus); EvolutionX;  Havoc;  ParanoidAndoid; and AOSiP Derpfest.   
  
*The following features should enable on any other custom ROM using pixel's system UI with gapps installed post module installation.*


| Feature Drop  | Steps to enable      | Sidenote  |
| ------------- |:-------------:| -----:|
| **Adaptive Sound**       | Toggle inside Settings-> Sound-> Adaptive Sound | since December |
|**Google assistant 2.0 with Continued Conversation**|Make sure system language is set to English(US) or English (UK).After installing module, clean Google app's data thereby launching assistant will ask to download additional update to enable the new assistant | Install [NGAResources]( https://www.dropbox.com/s/ed10513o4hke8ux/NgaResources.apk?dl=0 ) if not present in the gapps build already (rarely the case).|
|**Google Photos portrait filter**|Take portrait shot with human face and open it for edit inside google photos.You'll see updating editor in the notification which will download additional update for portrait filter.||
|**Google Duo portrait mode and autoframing during video calls**|Enables by itself and available during videocall as option bubbles| |
|**Live Caption Improvements**     | Enables by itself  with additionally downloaded package for live Caption.Toggle Sounds-> Live Caption  |   since December |
|**Flip to Silence** | Google Phone->Settings->Advanced. Toggle on Flip to Silence  |  |
|**Rampant Ringer**|Sounds-> Vibration.Toggle First Vibrate then ring gradually| |
|**UI overhaul for core google and some other apps**|Enables by itself such as gboard consistent new design, dark mode in google maps, docs, sheets, slides, playbooks etc | |
|**Pokémon Sidekick and other live wallpapers**|Shown in come alive section Styles and Wallpapers in PE and PE Plus |There are [ports](https://forum.xda-developers.com/m/pranav-pandey.3962236/#recent-content) of the same on XDA by recognized developer Pranav Panday|


HAL3 version enables the following for budget smartphones:
- **Camera 2 API Level 3** 
- **Google Play Services for AR  and Playground(AR Stickers)**. (becomes installable via playstore in budget range smartphones)


*The following features have not been tested but should enable themselves in countries where they are rolled out by Google*

- **Call Screening** in countries where it is rolled out. (enables by itself)  
Note: If not shown by itself in countries with this feature is rolled out, try clearing dialer data and then check inside dialer settings->Call screen to download resource and enable. 

- **AR Mode in google maps** in countries where it's available. (enables by itself)  
Note: Tap Directions, make sure you’re on the walking tab, and you should see a button next to the Start button that says Live View.  




## Instructions:
- Check the security patch level of the aforementioned custom ROMs and flash the corresponding module zip from release section via magisk.
- Turn on magisk hide and hide for Google PlayServices, Playstore, Google Service Framework and Carrier Services. Besides also hide magisk manager.

## Instructions for Edxposed Users:
- Use the latest Edxposed build with AppList mode enabled and blacklist Google PlayServices, Playstore, Google Service Framework and Carrier Services  
- Turn on riru hide mechanism by creating empty file *enable_hide* inside /data/adb/riru and reboot. Use riru apk to cross-check if hide is enabled.  
  
The system prop values are taken taken from https://git.rip/dumps/.   
