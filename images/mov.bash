#!/bin/bash 
declare -a STORY_ELEMS=("OnceUponATime" "AndEveryDay" "ThenOneDay.jpg" "BecauseOfThat" "UntilFinally" "AndEverSinceThen")
IPHONE_WIDTH=960
IPHONE_HEIGHT=720
IPHONE_EXT=".mov"

ANDROID_WIDTH=704
ANDROID_HEIGHT=576
ANDROID_EXT=".3gp"

FRAMERATE=1

for i in "${STORY_ELEMS[@]}"
do
   jpg=$i".jpg"
   iphone_int_mov=$i"_int"$IPHONE_EXT
   iphone_mov=$i$IPHONE_EXT
   
   iphone_dim=$IPHONE_WIDTH"x"$IPHONE_HEIGHT
   iphone_int_cmd="ffmpeg -pattern_type glob -framerate $FRAMERATE -y -i '$jpg' -s $iphone_dim $iphone_int_mov"  
   iphone_cmd="ffmpeg -i ./$iphone_int_mov -i ./1secAudio.mp3 -map 0:0 -map 1:0 $iphone_mov"
   iphone_rm_int_cmd="rm ./$iphone_int_mov"
   echo $iphone_int_cmd
   echo $iphone_cmd
   echo $iphone_rm_int_cmd

   android_mov=$i$ANDROID_EXT
   android_dim=$ANDROID_WIDTH"x"$ANDROID_HEIGHT
   android_cmd="ffmpeg -pattern_type glob -framerate $FRAMERATE -y -i '$jpg' -s $android_dim $android_mov"
   echo $android_cmd

done

#ffmpeg  -pattern_type glob -framerate 1 -y -i 'ThenOneDay.jpg' -s 704x576 ThenOneDay.3g
