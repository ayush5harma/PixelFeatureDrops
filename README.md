# Pixel Feature Drops - Magisk Module
<p align="center">
  <img src="https://user-images.githubusercontent.com/47772616/117039737-bd3a2900-ad26-11eb-9997-f5d8de1aa069.png" />
</p>

<p align="center"> </h2></p> 


## About


PixelFeatureDrops is a magisk module to enables most of the latest Google Pixel feature drops on devices running on android custom ROMs with pixel's system UI.


*The following features enable on an AOSP custom ROM using pixel's system UI with gapps installed post module installation.*


| Feature Drop  | Steps to enable      | Sidenote  |
| ------------- |:-------------:| -----:|
| **Unlimited Google Photos Storage** | Clear photos app data. While choosing backup option, choose high quality option. *All **uploads from phone** won't be counted against the google storage quota*. | Free and unlimited Backup in high quality post 1st June policy changes. |
| **Shareable Recorder** | Enables by itself using Recorder app enables automatic backup to Google Drive, and access through a new recorder.google.com web app. | Available since March.Works in English only |
| **Gboard Smart Compose** | Enables by itself using GBoard in selected messaging Apps. | Available since March.Works when set to English(US) only. |
| **Google Fit heart and respiratory monitoring** | Enables by itself in Google Fit | Available since March.Heart rate measure require Pixel's with back camera sensor for measurement.Respiratory measurement works in all devices using front camera. |
| **Adaptive Sound**       | Open your phone's Settings app.Tap Sound & vibration And then Adaptive Sound.Turn on Adaptive Sound.| Available since December.Working with all devices since March release.|
| **Adaptive Charging** | Open your phone's Settings app.Tap Battery And then Adaptive Battery.Turn on Adaptive Charging. | |
|**Google Assistant 2.0 with Continued Conversation**|Make sure system language is set to English(US) or English (UK).After installing module, clean the Google app's data,  thereby launching assistant will ask for the download of additional update to enable the new assistant.For Continued Coversation open the Google app.Tap More And Settings And Google Assistant And Assistant And Continued Conversation.Turn on the toggle for phone. | If NGAResources are missing then flash the [PixelFeatureDrops+NGAResouces][github-release-link].If *Google assistant compact UI not showing* then set the language of the assistant to English(United States) and English(United States) only.The new google assistant doesn't have bilingual functionality yet unless both those languages are supported.|
|**Google Photos portrait filter**|Take portrait shot with human face and open it for edit inside google photos app.| |
|**Google Duo portrait mode, autoframing during video calls and screen sharing in group calls**|Enables by itself and available during videocall as option bubble| |
|**Live Caption Improvements**     | Open your phone's Settings app.Tap Sound & vibration And Live Caption.Turn on Live Caption   |   Improvements since December |
|**Flip to Silence** | Open Google Phone app.Tap Settings And Advanced And Flip to Silence.Turn on Flip to Silence |  |
|**Rampant Ringer**|Open your phone's Settings app.Tap Sound & vibration And Vibration.Choose First Vibrate then ring gradually| |
|**UI overhaul for core google and some other apps**|Enables by itself such as gboard consistent new design, dark mode in google maps, docs, sheets, slides, playbooks etc | |
|**Pokémon Sidekick and The Mandalorian wallpapers**|Shown in Come Alive and other sections in  Styles and Wallpapers in PE and PE Plus |There are [ports](https://forum.xda-developers.com/m/pranav-pandey.3962236/#recent-content) of the same on XDA by recognized developer Pranav Panday|  
|**Now Playing Playlist export**|In your Now Playing history, you can select the songs you saved and export them to a playlist in YouTube Music.|	Install [Pixel Ambient Services ](https://play.google.com/store/apps/details?id=com.google.intelligence.sense&hl=en_IN&gl=US) if not present from playstore|


*The following features have not been tested but should enable themselves in countries where they are rolled out by Google*

- **Call Screen ,Hold For Me and other features powered by Google's Duplex Technology** in countries where it is rolled out. (enables by itself)  
Note: If not shown by itself in countries with this feature is rolled out, try clearing dialer data and then tap inside dialer settings And Call screen to download resource and enable. 

- **AR Mode in google maps** in countries where it's available. (enables by itself)  
Note: Tap Directions, make sure you’re on the walking tab, and you should see a button next to the Start button that says Live View.  

- **Pixel Stand Exclusive Features** 


## Installing 

### Requirements


- Android 11 (R).
   - *Magisk version*: 21 and above.
   - Custom ROM: AOSP based with pixel's system UI (preferably gapps build). 


### Via Magisk Manager

#### Default version

Check the security patch level of your custom ROMs and head to corresponding MonthlyPatch in the [PixelFeatureDrops Releases][github-release-link]. Click on `Assets` to show the files available in the release and then click on `PixelFeatureDrops` to download the flashable zip.  
( Security patch date can be viewed via settings under About Phone by tapping Android Version  )

#### NGA Resources version
New Google Assistant resources app is required to download additional resources to enable the Google Assistant 2.It is mostly available in the gapps build of custom ROMs already but in some cases it is not so.This flashable is for such cases. Click on `Assets` to show the files available in the release and then  `PixelFeatureDrops+NGAResources` to download the flashable zip.

#### HAL3 Version 
HAL3 version enables the following for budget smartphones:
- **Camera 2 API Level 3** 
- **Google Play Services for AR  and Playground(AR Stickers)**. (becomes installable via playstore in budget range smartphones)

Click on `Assets` to show the files available in the release and then  `PixelFeatureDrops-HAL3` to download the flashable zip.


## Sidenotes:

## Unsupported CustomROM : 
**Issue** : features not enabling.  
**Solution** : Use Custom ROM which are AOSP based with pixel's system UI (preferably gapps build).

## No UI for Google Assistant 2.0 :  
**Issue** : Customised Pixel launcher and navbars shipped with custom ROMs such as shady launcher variants of pixel launcher with app lock, icon packs, double tap to sleep and replaced navbar to provide 2 button gesture and customisation of the pill.Modified pixel launcher removes the UI completely while modified navbar removed the glow as these only worked with stock files.  
**Solution** : Use the [Pixel Launcher port from Pixel 5](https://forum.xda-developers.com/t/magisk-pixel-launcher-for-android-11.4213619/) if not provided with ROM.4

## Face Enrolment :
**Issue**: Enrollment not working because of errors with camera ( front camera not working during enrollment or switching to back camera )  
**Solution** : Enroll your face for face unlock before flashing the module.

## Playstore system Update :
**Issue** : Unable to install playstore system update.  
**Solution** : Disable the module then reboot and then install the playstore system update after which re- enable the module from magisk folowed by a reboot.

## Safetynet:   
**Issue** : Safetynet fails.  
**Solution** :  
Make sure to install correct release otherwise it will lead to CTS Failure in safetynet
Besides that, the following steps are to be taken in general when using magisk to pass safetynet:
- Turn on magisk hide and hide for *Google PlayServices, Playstore, Google Service Framework and Carrier Services*. Besides also hide magisk manager to pass safetynet.    

- **If safetynet fails with hardware attestation** use [Kdrag0n's Safetynet Fix](https://github.com/kdrag0n/safetynet-fix/releases) which makes safetynet check to fall back to basic attestation.  
[safetynet-fix-v1.1.1.zip](https://github.com/ayush5harma/PixelFeatureDrops/files/5938557/safetynet-fix-v1.1.1.zip)

If using edxposed also follow the below steps to ensure that the safetynet passes:
- Use the latest Edxposed build with AppList mode enabled and blacklist *Google PlayServices, Playstore, Google Service Framework and Carrier Services* .
- Turn on riru hide mechanism by creating empty file *enable_hide* inside /data/adb/riru and reboot. Use riru apk to cross-check if hide is enabled.  

## Aux Lenses:  
**Issue** : Can't detect /switch to aux lenses.  
**Solution** : 
If you are using gcam port try loading appropriate config file for the gcam you are using.  
If you're using miui cam port or any other port which checks for device fingerprint you have to spoof the device fingerprint for that camera app using edxposed module (https://github.com/ikws4/WeiJu) to make it work (you may check video here [#10](https://github.com/ayush5harma/PixelFeatureDrops/issues/10#issuecomment-701601857)  and can get these variable values from your stock build.prop file.)

## HAL 3 :   
**Issue** : Playstore not listing AR services.  
**Solution** : clear playstore data

## Credits :

The system files and prop values are taken and updated from android dump at  https://git.rip/dumps/google/redfin .  



[github-release-link]: https://github.com/ayush5harma/PixelFeatureDrops/releases
