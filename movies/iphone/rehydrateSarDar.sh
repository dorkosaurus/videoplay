
ffmpeg -i $1.mov -vf "scale=720:-1" -vcodec mpeg4  -y $1.scaled.mov
