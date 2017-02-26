obj-m += battery.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
	gzip -c battery.ko > battery.ko.gz

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean