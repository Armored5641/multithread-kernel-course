all:
#Compila el archivo
	nasm -f bin ./boot.asm -o ./boot.bin
#Añade al final de los 512 bytes del sector de arranque el mensaje de message.txt
	dd if=./message.txt >> ./boot.bin
#Rellena el segundo sector de 0
	dd if=/dev/zero bs=512 count=1 >> ./boot.bin
