# Pulsefy
Pulsefy is a module to work together with Spotify

Pulsefy is a module for Polybar where it captures the volume of Spotify and shows it how many % it is currently at
it's simple but functional.

`Image showing that the spotify volume icon only appears when spotify is playing music.`
![2023-06-16-120934_1920x1080_scrot](https://github.com/Gho0stDev/Pulsefy/assets/118975798/53b51704-a8ba-4906-955b-477ba779a8c3)
![2023-06-16-121021_1920x1080_scrot](https://github.com/Gho0stDev/Pulsefy/assets/118975798/cb2647b0-ad38-4e3c-9e8c-69c265b7e31e)


For now, I don't know how I'm going to change its volume without having to enter spotify or change it through pulseaudio (lowering the system volume...). but I'm working on it.

```
[module/pulsefy]
type = custom/script
exec = $PATH/to/script/pulsefy.sh
exec-if = "pgrep -x spotify > /dev/null"
format-padding = 1
interval = 1
format-prefix-foreground = ${colors.green}
format-prefix = " "
format = <label>
label-padding = 0
label = %output%
```
