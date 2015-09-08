# sublime_imfix
修复sublime text下无法输入中文的问题

## 安装依赖包
$ sudo apt-get install build-essential libgtk2.0-dev

## Build
gcc -shared -o libsublime-imfix.so sublime_imfix.c  `pkg-config --libs --cflags gtk+-2.0` -fPIC

## 使用该patch
$ sudo cp libsublime-imfix.so /opt/sublime_text/

## Sublime Text
这是一个桌面快捷方式的例子，请依据实际的安装路径来进行相应的更改。
注释掉的部分就是初始默认的内容。