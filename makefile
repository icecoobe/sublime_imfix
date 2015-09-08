
sublime_imfix:sublime_imfix.c
	gcc -shared -o libsublime-imfix.so sublime_imfix.c  `pkg-config --libs --cflags gtk+-2.0` -fPIC

install:
	sudo cp libsublime-imfix.so /opt/sublime_text/

clean:
	rm  libsublime-imfix.so