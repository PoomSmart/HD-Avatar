ARCHS = arm64 arm64e
TARGET = iphone:latest:11.0
PACKAGE_VERSION = 0.0.1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = HDAVATAR

HDAVATAR_FILES = Tweak.x
HDAVATAR_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
