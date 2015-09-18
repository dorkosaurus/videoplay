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
   iphone_mov=$i$IPHONE_EXT
   iphone_dim=$IPHONE_WIDTH"x"$IPHONE_HEIGHT
   iphone_cmd="ffmpeg -pattern_type glob -framerate $FRAMERATE -y -i '$jpg' -s $iphone_dim $iphone_mov"    
   echo $iphone_cmd

   android_mov=$i$ANDROID_EXT
   android_dim=$ANDROID_WIDTH"x"$ANDROID_HEIGHT
   android_cmd="ffmpeg -pattern_type glob -framerate $FRAMERATE -y -i '$jpg' -s $android_dim $android_mov"
   echo $android_cmd

done

#ffmpeg  -pattern_type glob -framerate 1 -y -i 'ThenOneDay.jpg' -s 704x576 ThenOneDay.3g
