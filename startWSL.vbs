Set ws = WScript.CreateObject("WScript.Shell")
cmd = "C:\Windows\System32\bash.exe -c ""bash /init.sh"""
'运行命令不显示cmd窗口
ws.Run cmd, 0, false
Set ws = Nothing
WScript.quit