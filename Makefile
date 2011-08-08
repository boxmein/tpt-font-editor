editor: editor.c
	gcc -oeditor -DSCALE=2 -DFONTEDITOR editor.c -lSDL -lm -O3 -ffast-math -march=k8 -Wall -std=c99
	
packer: packer.c
	gcc -opacker -DFONTEDITOR editor.c -lSDL -lm -O3 -ffast-math -march=k8 -Wall -std=c99
	
unpacker: unpacker.c
	gcc -ounpacker -DFONTEDITOR editor.c -lSDL -lm -O3 -ffast-math -march=k8 -Wall -std=c99

clean:
	rm -f editor packer
