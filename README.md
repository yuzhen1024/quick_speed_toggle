# quick_speed_toggle
The mpv player lua script, like Potplayer "z".

- 当你按下z，倍数将恢复为1，再次按下时，将恢复为你之前的播放倍数。

# other
if you want, you can append they in your `input.conf` :
```conf
! cycle-value speed 1.25 1.55
@ set speed 2.35
Shift+# set speed 3.25
x add speed -0.1
c add speed 0.1
```
# 关于字幕延迟 z/x 键
mpv提供了更高效的方式：`Ctrl+Shift+Left` and `Ctrl+Shift+Right`

