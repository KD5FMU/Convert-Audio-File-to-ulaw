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

then execute the file conversion thusly.

```
./audio_convert.sh input.wav
```

Or you can specify the output filename.
```
./audio_convert.sh input.mp3 my_output.ul
```


