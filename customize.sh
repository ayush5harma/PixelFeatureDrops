chmod 0755 $MODPATH/curl
sleep 0.500
cat << "EOF"                                                                
EOF
sleep 0.1000
ui_print "- Installing, PixelFeatureDrops"



$MODPATH/curl -k -L https://raw.githubusercontent.com/ayush5harma/PixelFeatureDrops/gapps-config-flags/flags/GEL.GSAPrefs.xml -o /data/media/0/GEL.GSAPrefs.xml 
$MODPATH/curl -k -L https://raw.githubusercontent.com/ayush5harma/PixelFeatureDrops/gapps-config-flags/flags/dialer_phenotype_flags.xml -o /data/media/0/dialer_phenotype_flags.xml 
$MODPATH/curl -k -L https://github.com/ayush5harma/PixelFeatureDrops/blob/gapps-config-flags/flags/flag_value.xml -o /data/media/0/flag_value.xml 
$MODPATH/curl -k -L https://github.com/ayush5harma/PixelFeatureDrops/releases/download/v06052021/NgaResources.apk -o /data/media/0/NgaResources.apk

sleep 0.1500


# set global variables
GOOGLE_APP_PCKG_NAME="com.google.android.googlequicksearchbox"
GBOARD_APP_PCKG_NAME="com.google.android.inputmethod.latin"
DIALER_APP_PCKG_NAME="com.google.android.dialer"
GOOGLE_APP_DIR="/data/data/$GOOGLE_APP_PCKG_NAME"
GBOARD_APP_DIR="/data/data/$GBOARD_APP_PCKG_NAME"
DIALER_APP_DIR="/data/data/$DIALER_APP_PCKG_NAME"
SHARED_PREFS_DIR="$GOOGLE_APP_DIR/shared_prefs"
SHARED_PREFS_DIR2="$GBOARD_APP_DIR/shared_prefs"
SHARED_PREFS_DIR3="$DIALER_APP_DIR/shared_prefs"
RESOURCES_DIR="/data/media/0"
GSA_PREFS="$RESOURCES_DIR/GEL.GSAPrefs.xml"
NGA_RESOURCES="$RESOURCES_DIR/NgaResources.apk"
DIALER_PHENOTYPE="$RESOURCES_DIR/dialer_phenotype_flags.xml"
FLAG_VALUE="$RESOURCES_DIR/flag_value.xml"
BACKUP_DIR="$MODPATH/backup"


# print the current installation progress to the user
print_progress() {
  ui_print "- $1"
}

# check device compatibility with this module
check_compatibility() {
  print_progress "Checking Compatibility"
  
  # if android != 11
  if [ ! $API -eq "30" ]; then
    abort "This module is for android 11 only"
  fi
  
  # if shared_prefs dir doesn't exist or Google app isn't installed
  if [ ! -d "$SHARED_PREFS_DIR" ] || [ ! adb shell pm list packages | grep $GOOGLE_APP_PCKG_NAME ]; then
    abort "Google app not installed"
  fi

    # if shared_prefs dir 2 doesn't exist or Gboard app isn't installed
  if [ ! -d "$SHARED_PREFS_DIR2" ] || [ ! adb shell pm list packages | grep $GBOARD_APP_PCKG_NAME ]; then
    abort "Gboard app not installed"
  fi

      # if shared_prefs dir 3 doesn't exist or Gboard app isn't installed
  if [ ! -d "$SHARED_PREFS_DIR3" ] || [ ! adb shell pm list packages | grep $DIALER_APP_PCKG_NAME ]; then
    abort "Dialer app not installed"
  fi
  

  
  # if cpu architecture is arm
  if [ $ARCH -eq "arm"  ]; then
    print_progress "There's a high chance of this module not working on your cpu architecture"
  fi
}

# back up files that will be restored on uninstallation
backup_files() {
  print_progress "backing up files"
  mkdir $BACKUP_DIR
  cp "$GSA_PREFS" "$BACKUP_DIR" || print_progress "Could not back up GSA prefs"
  cp "$FLAG_VALUE" "$BACKUP_DIR" || print_progress "Could not back up gboard flags"
  cp "$DIALER_PHENOTYPE" "$BACKUP_DIR" || print_progress "Could not back up dialer flags"

}

# install resources
install_resources_apk() {
  if [ "$BOOTMODE" != 'true' ]; then
    print_progress "Skipping resources APK installation since not running via Magisk Manager"
    return 0
  fi

  
  print_progress "Installing resources"
  pm install -r "$NGA_RESOURCES" || abort "Could not install resources"
}

# replace files

replace_GSAPrefs() {
  print_progress "Replacing GSAPrefs"
  chmod 0777 SHARED_PREFS_DIR && tail -c 6 GSA_PREFS && grep -r -h "@" SHARED_PREFS_DIRs/GEL.GSAPrefs.xml >> GSA_PREFS && echo "Google account mapped">> GSA_PREFS && cp GSA_PREFS SHARED_PREFS_DIR  || abort "Could not replace GSA prefs"
}


replace_Gboard() {
  print_progress "Replacing Gboard flags"
  cp "$FLAG_VALUE" "$SHARED_PREFS_DIR2" || abort "Could not replace gboard flags"
}


replace_Dialer() {
  print_progress "Replacing Dialer flags"
  cp "$DIALER_PHENOTYPE" "$SHARED_PREFS_DIR3" || abort "Could not replace dialer flags"
}



# change shared_prefs dir's permissions
set_sharedPrefs_perms() {
  print_progress "Setting shared_prefs directory permissions"
  chmod 551 "$SHARED_PREFS_DIR" || abort "Could not set permissions of google_app_shared_prefs directory"
  chmod 551 "$SHARED_PREFS_DIR2" || abort "Could not set permissions of gboard_app_shared_prefs directory"
  chmod 551 "$SHARED_PREFS_DIR3" || abort "Could not set permissions of google_dialer_shared_prefs directory"
}

# removes leftover installation files
clean_up() {
  print_progress "cleaning up"
  rm -rf "$RESOURCES_DIR" || print_progress "Could not delete leftover files"
  rm -rf "$GOOGLE_APP_DIR/cache/*" || print_progress "Could not clear Google app's cache"
  rm -rf "$GBOARD_APP_DIR/cache/*" || print_progress "Could not clear Gboard app's cache"
  rm -rf "$DIALER_APP_DIR/cache/*" || print_progress "Could not clear Dialer app's cache"
}

check_compatibility
set_sharedPrefs_perms
backup_files
replace_GSAPrefs
replace_Gboard
replace_Dialer
install_resources_apk
clean_up

print_progress "Installation successful. Set the language in the Google app to English (US)"

