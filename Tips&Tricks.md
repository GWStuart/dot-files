# Tips & Tricks
Just some common tips and tricks so that I don't have to search everything up again each time.

## Video Cropping
Suppose you have some video file that needs to be cropped. One great way to do this is with the `ffmpeg` command as follows,
```
ffmpeg -i INPUT_FILE -vf "crop=WIDTH:HEIGHT:LEFT:TOP" -c:a copy OUTPUT_FILE
```
The easiest way to find the values for `WDITH`, `HEIGHT`, `LEFT` and `TOP` is with VLC.
- Open the file with VLC
- Go `Tools -> Effects and Filters -> Video Effects -> Crop`
- From there you can figure out the appropriate values
- Note however the `ffmpeg` wants a width and height however this can be easily calculated as
  - `WIDTH = 1920 - right - left`
  - `HEIGHT = 1080 - top - bottom`
  - (assuming that the recording is 1920x1080 pixels)
 
## Video Trimming
Trimming a video is quite easy with `ffmpeg` and can be achieved as follows,
```
ffmpeg -ss START -to END -i INPUT_FILE -c copy OUTPUT_FILE
```
Here `START` and `END` can be specified as `HH:MM:SS.miliseconds`

## LaTeX
Use `de-macro` to replace macro definitions.
