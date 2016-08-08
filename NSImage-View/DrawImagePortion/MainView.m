//
//  MainView.m
//  DrawImagePortion
//
//  Created by towry on 8/8/16.
//  Copyright © 2016 towry. All rights reserved.
//

// documentation:
// https://developer.apple.com/library/mac/documentation/Cocoa/Conceptual/CocoaDrawingGuide/Transforms/Transforms.html
//

#import "MainView.h"

@implementation MainView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
	[[NSColor blackColor] setFill];
	NSRectFill(dirtyRect);
	
//	[self drawOurImage];
	if ([self respondsToSelector:@selector(drawOurImage)]) {
		[self performSelector:@selector(drawOurImage) withObject:self];
	}
}

- (void)drawOurImage {
	NSCompositingOperation op = NSCompositeSourceOver;
	NSImage *image = [NSImage imageNamed:@"pacman.png"];
	
	NSSize imageSize = image.size;
	
	NSPoint origin = NSMakePoint(10, 48);
	NSRect srcRect = NSMakeRect(2, imageSize.height - 50, 182, 47);
	CGFloat delta = 1.0;
	
	// draw the image
	[image drawAtPoint:origin fromRect:srcRect operation:op fraction:delta];
}

@end
