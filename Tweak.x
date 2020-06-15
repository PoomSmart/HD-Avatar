#import <CoreGraphics/CoreGraphics.h>

%hook AVTRenderingScope

+ (CGFloat)widthForRenderingType:(NSInteger)renderingType options:(NSUInteger)options {
	CGFloat width = %orig;
	return renderingType == 2 ? width * 2 : width;
}

%end

%hook AVTStickerConfiguration

- (CGSize)size {
	CGSize size = %orig;
	return CGSizeMake(size.width * 2, size.height * 2);
}

%end

%ctor {
	%init;
}