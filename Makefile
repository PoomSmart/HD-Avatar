export PREFIX = $(THEOS)/toolchain/Xcode11.xctoolchain/usr/bin/
TARGET = iphone:clang:latest:11.0
PACKAGE_VERSION = 1.0.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = HDAVATAR

HDAVATAR_FILES = Tweak.x
HDAVATAR_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
