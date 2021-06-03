#import <CoreGraphics/CoreGraphics.h>

%hook AVTStickerConfiguration

- (CGSize)size {
	CGSize size = %orig;
	if (size.width > 100)
		return CGSizeMake(size.width * 2, size.height * 2);
	return size;
}

%end
