#!/system/bin/sh

MODDIR=${0%/*}

sleep 130

device_config put device_personalization_services AdaptiveAudio__enable_adaptive_audio true
