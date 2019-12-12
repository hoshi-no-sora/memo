# SSIDの後ろに２がついてしまう場合の対処法

## 事象
```yaml
事象: SSIDの後ろに２がついてしまう(表示が変)
```

## 解決策

1. レジストリエディタの起動
   ショートカットキー「Win+R」-> 「regedit」と入力 -> 「OK」

1. 以下の場所以下にある、対象のSSIDに関する部分を消去
(<font color=red>特に、SSID変更前のものがないか注意!!!</font>)
```
HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkList\Profiles
```



