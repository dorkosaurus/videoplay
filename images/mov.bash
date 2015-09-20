#!/bin/bash 
declare -a STORY_ELEMS=("OnceUponATime" "AndEveryDay" "ThenOneDay" "BecauseOfThat" "UntilFinally" "AndEverSinceThen")
#1280x720
IPHONE_WIDTH=720
IPHONE_HEIGHT=1280
IPHONE_EXT=".mov"
IPHONE_ASPECT_RATIO="16:9"
IPHONE_PIXEL_FORMAT="yuv420p"
ANDROID_WIDTH=704
ANDROID_HEIGHT=576
ANDROID_EXT=".3gp"

FRAMERATE=29.97


echo "rm ./*.mov ./*.3gp"

for i in "${STORY_ELEMS[@]}"
do
   jpg=$i".jpg"

   iphone_int_mov=$i"_int"$IPHONE_EXT
   iphone_mov=$i$IPHONE_EXT
   iphone_dim=$IPHONE_WIDTH"x"$IPHONE_HEIGHT
   iphone_int_cmd="ffmpeg -pattern_type glob -loop 1 -t 1 -framerate $FRAMERATE -y -i ./$jpg -s $iphone_dim -pix_fmt $IPHONE_PIXEL_FORMAT  -vf \"setsar=sar=16:9,setdar=dar=1:1\" $iphone_int_mov" 
   iphone_cmd="ffmpeg -i ./$iphone_int_mov -i ./1secAudio.mp3 -map 0:0 -map 1:0 $iphone_mov"
   iphone_rm_int_cmd="rm ./$iphone_int_mov"
   echo $iphone_int_cmd
   echo $iphone_cmd
   echo $iphone_rm_int_cmd

   android_mov=$i$ANDROID_EXT
   android_int_mov=$i"_int"$ANDROID_EXT
   android_dim=$ANDROID_WIDTH"x"$ANDROID_HEIGHT
   android_int_cmd="ffmpeg -pattern_type glob -framerate $FRAMERATE -y -i ./$jpg -s $android_dim $android_int_mov"
   android_cmd="ffmpeg -i ./$android_int_mov -i ./1secAudio.mp3 -map 0:0 -map 1:0 $android_mov"
   android_rm_int_cmd="rm ./$android_int_mov"
   echo $android_int_cmd 
   echo $android_cmd
   echo $android_rm_int_cmd

done

#ffmpeg  -pattern_type glob -framerate 1 -y -i 'ThenOneDay.jpg' -s 704x576 ThenOneDay.3g
