# P4XLProps
Magisk Module to enable google's latest pixel iteration software features listed below by spoofing the device as Pixel 4 XL(codenamed Coral).  
The module spoof using latest coral's device fingerprint.  
## Requirements:
*Tested Custom roms* : PixelExperience(PE and PE plus), EvolutionX , Havoc, ParanoidAndoid and AOSiP Derpfest.   
(Should also work on any other custom rom using pixel's system UI with gapps installed).    

*Device*: any  
*Magisk version*: 19+

*Enables*:
- The new google assistant  
Make sure system language is set to English(US).   
After installing module clean Google app's data thereby launching assistant will ask to download additional update for new assistant.  
Note: NgaResources is required for downloading the required data.Its mostly preinstalled but if unable to download resources try installing NgaResources.apk from here :https://drive.google.com/file/d/1fTymlp9KaeTinK2D_UqAJUmaGwexeEz-/view    
- AR Core (via playstore)
- Rampant Ringer (check Sounds->Vibration in settings post module installation to enable)
- Live Caption (check Sounds-> Live Caption post installation)  
Note: NgaResources is required for downloading the required data.Its mostly preinstalled but if unable to download resources try installing NgaResources.apk from here :https://drive.google.com/file/d/1fTymlp9KaeTinK2D_UqAJUmaGwexeEz-/view    
- Pokémon go live wallpaper (Shown in Styles and Wallpapers)  
- UI overhaul for core google and some other apps.(enables by itself)   
Removes the black strip in navbar while using gboard, extending gboard all way up to the pill and other UI changes in google and non google apps that are rolled out for pixel with time.
- Call Screening in countries where it is rolled out.(enables by itself)
Note:If not shown by itself in countries with this feature is rolled out, try clearing dialer data and then check inside dialer settings->Call screen to download resource and enable. 
- AR Mode in google maps in countries where it's available.(enables by itself)  
Note:Tap Directions, make sure you’re on the walking tab, and you should see a button next to the Start button that says Live View.
- Google Photos portrait filter to add bookeh effect on any photo with faces taken as normal before.(enables by itself)  
Note:Make sure to use gcam
- Google Duo portrait mode and autoframing during video calls.(enables by itself)
- <strike>3D touch mimics</strike>. (Not yet rolled out)
- <strike>Messages RCS</strike> (rolled out for all devices)
- Rules in settings that help automate changes (Settings->System)
- <s>Screen attention</s> (keeps the screen on while you are looking at it by using the front-facing camera)(no longer works as code removed from custom rom sources, works in Feb and March builds of mentioned custom rom)

## Instructions:
Check the security patch level of the aforementioned custom ROM's and flash the corresponding module zip from release section via magisk.
