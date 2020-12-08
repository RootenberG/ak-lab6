ifneq ($(KERNELRELEASE),)
# kbuild part of makefile
obj-m   := hello.o
else
# normal makefile
KDIR ?= /lib/modules/`uname -r`/build
# INCLUDE := =I/inc/


default:
	$(MAKE) -C $(KDIR) M=$$PWD
clean:
	$(MAKE) -C $(KDIR) M=$$PWD clean
endif
