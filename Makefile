TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = Instagram


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = fulllikes

fulllikes_FILES = Tweak.xm
fulllikes_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

