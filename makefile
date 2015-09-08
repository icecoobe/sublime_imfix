
sublime_imfix:sublime_imfix.c
	gcc -shared -o libsublime-imfix.so sublime_imfix.c  `pkg-config --libs --cflags gtk+-2.0` -fPIC

install:libsublime-imfix.so
	sudo cp libsublime-imfix.so /opt/sublime_text/
	sudo cat subl > /usr/bin/subl

clean:
	rm  libsublime-imfix.so
