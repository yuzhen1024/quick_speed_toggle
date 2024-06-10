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

To bind other keys, append [key-names](https://mpv.io/manual/master/#key-names) to here: https://github.com/yuzhen1024/quick_speed_toggle/blob/c930f9307c8e536c072b97a84fdbb3ca7f8c6433/speedtoggle.lua#L3

# 关于字幕延迟 z/x 键
```
Z add sub-delay -0.1
X add sub-delay 0.1
```

