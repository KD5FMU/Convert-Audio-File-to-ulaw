# Convert-Audio-File-to-ulaw
This script will convert audio file to ulaw files compatible to play on ASL 3

First things first, make sure you hax sox installed
```
sudo apt update && sudo apt install sox
```

Then install the mp3 handler for sox
```
sudo apt install libsox-fmt-mp3
```

Then download the scrpt file 
```
sudo wget https://raw.githubusercontent.com/KD5FMU/Convert-Audio-File-to-ulaw/refs/heads/main/audio_convert.sh
```
I like to put my script files in /etc/asterisk/local but you can put them wereever you like. Just remeber wher you put them LOL!

then execute the file conversion thusly.

```
./audio_convert.sh input.wav
```

Or you can specify the output filename.
```
./audio_convert.sh input.mp3 my_output.ul
```


