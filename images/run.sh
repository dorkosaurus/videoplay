rm ./*.mov ./*.3gp
ffmpeg -pattern_type glob -loop 1 -t 1 -framerate 29.97 -y -i ./OnceUponATime.jpg -s 720x1280 -pix_fmt yuv420p -vf "setsar=sar=1:1,setdar=dar=16:9" OnceUponATime_int.mov
ffmpeg -i ./OnceUponATime_int.mov -i ./1secAudio.mp3 -map 0:0 -map 1:0 OnceUponATime.mov
rm ./OnceUponATime_int.mov
ffmpeg -pattern_type glob -framerate 29.97 -y -i ./OnceUponATime.jpg -s 704x576 OnceUponATime_int.3gp
ffmpeg -i ./OnceUponATime_int.3gp -i ./1secAudio.mp3 -map 0:0 -map 1:0 OnceUponATime.3gp
rm ./OnceUponATime_int.3gp
ffmpeg -pattern_type glob -loop 1 -t 1 -framerate 29.97 -y -i ./AndEveryDay.jpg -s 720x1280 -pix_fmt yuv420p -vf "setsar=sar=1:1,setdar=dar=16:9" AndEveryDay_int.mov
ffmpeg -i ./AndEveryDay_int.mov -i ./1secAudio.mp3 -map 0:0 -map 1:0 AndEveryDay.mov
rm ./AndEveryDay_int.mov
ffmpeg -pattern_type glob -framerate 29.97 -y -i ./AndEveryDay.jpg -s 704x576 AndEveryDay_int.3gp
ffmpeg -i ./AndEveryDay_int.3gp -i ./1secAudio.mp3 -map 0:0 -map 1:0 AndEveryDay.3gp
rm ./AndEveryDay_int.3gp
ffmpeg -pattern_type glob -loop 1 -t 1 -framerate 29.97 -y -i ./ThenOneDay.jpg -s 720x1280 -pix_fmt yuv420p -vf "setsar=sar=1:1,setdar=dar=16:9" ThenOneDay_int.mov
ffmpeg -i ./ThenOneDay_int.mov -i ./1secAudio.mp3 -map 0:0 -map 1:0 ThenOneDay.mov
rm ./ThenOneDay_int.mov
ffmpeg -pattern_type glob -framerate 29.97 -y -i ./ThenOneDay.jpg -s 704x576 ThenOneDay_int.3gp
ffmpeg -i ./ThenOneDay_int.3gp -i ./1secAudio.mp3 -map 0:0 -map 1:0 ThenOneDay.3gp
rm ./ThenOneDay_int.3gp
ffmpeg -pattern_type glob -loop 1 -t 1 -framerate 29.97 -y -i ./BecauseOfThat.jpg -s 720x1280 -pix_fmt yuv420p -vf "setsar=sar=1:1,setdar=dar=16:9" BecauseOfThat_int.mov
ffmpeg -i ./BecauseOfThat_int.mov -i ./1secAudio.mp3 -map 0:0 -map 1:0 BecauseOfThat.mov
rm ./BecauseOfThat_int.mov
ffmpeg -pattern_type glob -framerate 29.97 -y -i ./BecauseOfThat.jpg -s 704x576 BecauseOfThat_int.3gp
ffmpeg -i ./BecauseOfThat_int.3gp -i ./1secAudio.mp3 -map 0:0 -map 1:0 BecauseOfThat.3gp
rm ./BecauseOfThat_int.3gp
ffmpeg -pattern_type glob -loop 1 -t 1 -framerate 29.97 -y -i ./UntilFinally.jpg -s 720x1280 -pix_fmt yuv420p -vf "setsar=sar=1:1,setdar=dar=16:9" UntilFinally_int.mov
ffmpeg -i ./UntilFinally_int.mov -i ./1secAudio.mp3 -map 0:0 -map 1:0 UntilFinally.mov
rm ./UntilFinally_int.mov
ffmpeg -pattern_type glob -framerate 29.97 -y -i ./UntilFinally.jpg -s 704x576 UntilFinally_int.3gp
ffmpeg -i ./UntilFinally_int.3gp -i ./1secAudio.mp3 -map 0:0 -map 1:0 UntilFinally.3gp
rm ./UntilFinally_int.3gp
ffmpeg -pattern_type glob -loop 1 -t 1 -framerate 29.97 -y -i ./AndEverSinceThen.jpg -s 720x1280 -pix_fmt yuv420p -vf "setsar=sar=1:1,setdar=dar=16:9" AndEverSinceThen_int.mov
ffmpeg -i ./AndEverSinceThen_int.mov -i ./1secAudio.mp3 -map 0:0 -map 1:0 AndEverSinceThen.mov
rm ./AndEverSinceThen_int.mov
ffmpeg -pattern_type glob -framerate 29.97 -y -i ./AndEverSinceThen.jpg -s 704x576 AndEverSinceThen_int.3gp
ffmpeg -i ./AndEverSinceThen_int.3gp -i ./1secAudio.mp3 -map 0:0 -map 1:0 AndEverSinceThen.3gp
rm ./AndEverSinceThen_int.3gp
