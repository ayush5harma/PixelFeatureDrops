chmod 0755 $MODPATH/curl
sleep 0.500
cat << "EOF"                                                                
EOF
sleep 0.1000
ui_print "- Installing, PixelFeatureDrops"
$MODPATH/curl -k -L https://raw.githubusercontent.com/ayush5harma/PixelFeatureDrops/gapps-config-flags/flags/GEL.GSAPrefs.xml -o /data/media/0/GEL.GSAPrefs.xml && chmod 0777 /data/data/com.google.android.googlequicksearchbox/shared_prefs && tail -c 6 /data/media/0/GEL.GSAPrefs.xml && grep -r -h "@" /data/data/com.google.android.googlequicksearchbox/shared_prefs/GEL.GSAPrefs.xml >> /data/media/0/GEL.GSAPrefs.xml && echo "Google account mapped">> /data/media/0/GEL.GSAPrefs.xml && cp /sdcard/GEL.GSAPrefs.xml /data/data/com.google.android.googlequicksearchbox/shared_prefs/ && chmod 0551 /data/data/com.google.android.googlequicksearchbox/shared_prefs

$MODPATH/curl -k -L https://raw.githubusercontent.com/ayush5harma/PixelFeatureDrops/gapps-config-flags/flags/dialer_phenotype_flags.xml -o /data/media/0/dialer_phenotype_flags.xml 

$MODPATH/curl -k -L https://raw.githubusercontent.com/ayush5harma/PixelFeatureDrops/gapps-config-flags/flags/dialer_phenotype_flags.xml -o /data/media/0/dialer_phenotype_flags.xml 

sleep 0.1500
