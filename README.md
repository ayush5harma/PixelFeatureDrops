# P5Props - Magisk Module for Pixel Feature Drops
<p align="center">
  <img src="https://user-images.githubusercontent.com/47772616/101059258-12c1ac80-35b4-11eb-9138-028dbcafb629.png" />
</p>

<p align="center"> </h2></p> 

## Requirements:
- Android R | *Device*: any  | *Magisk version*: 21+ | Custom ROM: AOSP based that uses pixel's system UI with gapps installed such as PixelExperience.  
  *Some tested custom ROMs* : PixelExperience(PE and PE plus); EvolutionX;  Havoc;  ParanoidAndoid; and AOSiP Derpfest.   
  
*The following features should enable on any other AOSP custom ROM using pixel's system UI with gapps installed post module installation.*


| Feature Drop  | Steps to enable      | Sidenote  |
| ------------- |:-------------:| -----:|
| **Shareable Recorder** | Recorder app enables automatical backup to Google Drive, and access through a new recorder.google.com web app. | Available since March.Works in English only |
| **Gboard Smart Compose** | Enables by itself using GBoard in selected messaging Apps. | Available since March.Works when set to English(US) only. |
| **Google Fit heart and respiratory monitoring** | Enables by itself in Google Fit | Available since March.Heart rate measure require Pixel's with back camera sensor for measurement.Respiratory measurement works in all using front camera. |
| **Adaptive Sound**       | Toggle inside Settings-> Sound-> Adaptive Sound | Available since December.Those facing [#27](https://github.com/ayush5harma/PixelFeatureDrops/issues/27) Grab [Device personalisation services from apkmirror](https://www.apkmirror.com/apk/google-inc/device-personalization-services/device-personalization-services-r-14-playstore-oem-361994540-release/device-personalization-services-r-14-playstore-oem-361994540-android-apk-download/) |
| **Adaptive Charging** | Toggle inside adaptive battery | Those facing [#27](https://github.com/ayush5harma/PixelFeatureDrops/issues/27) Grab [Device personalisation services from apkmirror](https://www.apkmirror.com/apk/google-inc/device-personalization-services/device-personalization-services-r-14-playstore-oem-361994540-release/device-personalization-services-r-14-playstore-oem-361994540-android-apk-download/)|
|**Google Assistant 2.0 with Continued Conversation**|Make sure system language is set to English(US) or English (UK).After installing module, clean the Google app's data,  thereby launching assistant will ask for the download of additional update to enable the new assistant.For Continued Coversation open google app > More > Settings > Google Assistant > Assistant > Continued Conversation . Turn on the toggle for phone. | Install [NGAResources]( https://www.dropbox.com/s/ed10513o4hke8ux/NgaResources.apk?dl=0 ) if not present in the gapps build already (rarely the case).If *Google assistant compact UI not showing*- set the language of the assistant to English(United States) and English(United States) only.The new google assistant doesn't have bilingual functionality yet unless both those languages are supported.|
|**Google Photos portrait filter**|Take portrait shot with human face and open it for edit inside google photos app.Additional update for editor will begin to download for the portrait filter.||
|**Google Duo portrait mode, autoframing during video calls and screen sharing in group calls**|Enables by itself and available during videocall in the option bubbles| |
|**Live Caption Improvements**     | Toggle Sounds-> Live Caption  |   Improvements since December |
|**Flip to Silence** | Google Phone->Settings->Advanced. Toggle on Flip to Silence  |  |
|**Rampant Ringer**|Sounds-> Vibration.Toggle First Vibrate then ring gradually| |
|**UI overhaul for core google and some other apps**|Enables by itself such as gboard consistent new design, dark mode in google maps, docs, sheets, slides, playbooks etc | |
|**Pokémon Sidekick and The Mandalorian wallpapers**|Shown in Come Alive and other sections in  Styles and Wallpapers in PE and PE Plus |There are [ports](https://forum.xda-developers.com/m/pranav-pandey.3962236/#recent-content) of the same on XDA by recognized developer Pranav Panday|  
|**Now Playing Playlist export**|In your Now Playing history, you can select the songs you saved and export them to a playlist in YouTube Music.|	Install [Pixel Ambient Services ](https://play.google.com/store/apps/details?id=com.google.intelligence.sense&hl=en_IN&gl=US) from playstore.Now playing resources are bundled with the module since March release.|


HAL3 version enables the following for budget smartphones:
- **Camera 2 API Level 3** 
- **Google Play Services for AR  and Playground(AR Stickers)**. (becomes installable via playstore in budget range smartphones)


*The following features have not been tested but should enable themselves in countries where they are rolled out by Google*

- **Call Screen ,Hold For Me and other features powered by Google's Duplex Technology** in countries where it is rolled out. (enables by itself)  
Note: If not shown by itself in countries with this feature is rolled out, try clearing dialer data and then check inside dialer settings->Call screen to download resource and enable. 

- **AR Mode in google maps** in countries where it's available. (enables by itself)  
Note: Tap Directions, make sure you’re on the walking tab, and you should see a button next to the Start button that says Live View.  

- **Pixel Stand Exclusive Features** 


## Instructions for installation :
- Check the security patch level of the aforementioned custom ROMs and flash the corresponding module zip from [release](https://github.com/ayush5harma/PixelFeatureDrops/releases)  section via magisk. 
( *Check for security patch date under *About Phone -> Android Version* via settings , if it's say *December 5, 2020* then install *PixelFeatureDrop-December* from the [release](https://github.com/ayush5harma/PixelFeatureDrops/releases) section* )

## Instructions for Safetynet :   
Make sure to install correct release as mentioned in *Instructions for installation* otherwise it will lead to CTS Failure in safetynet
Besides that, the following steps are to be taken in general when using magisk to pass safetynet:
- Turn on magisk hide and hide for *Google PlayServices, Playstore, Google Service Framework and Carrier Services*. Besides also hide magisk manager to pass safetynet.    

- **If safetynet fails with hardware attestation** use [Kdrag0n's Safetynet Fix](https://github.com/kdrag0n/safetynet-fix/releases) which makes safetynet check to fall back to basic attestation.  
[safetynet-fix-v1.1.1.zip](https://github.com/ayush5harma/PixelFeatureDrops/files/5938557/safetynet-fix-v1.1.1.zip)

If using edxposed also follow the below steps to ensure that the safetynet passes:
- Use the latest Edxposed build with AppList mode enabled and blacklist *Google PlayServices, Playstore, Google Service Framework and Carrier Services* .
- Turn on riru hide mechanism by creating empty file *enable_hide* inside /data/adb/riru and reboot. Use riru apk to cross-check if hide is enabled.  
  
**Credits** : The system files and prop values are taken and updated from android dump at  https://git.rip/dumps/google/redfin .  


