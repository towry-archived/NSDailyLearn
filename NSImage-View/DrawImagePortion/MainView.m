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
    
//  [self drawNormalImage];
    if ([self respondsToSelector:@selector(drawNormalImage)]) {
        [self performSelector:@selector(drawNormalImage) withObject:self];
    }
    
    // draw the scaled image
    [self drawImageWithScale];
    
    // draw the third image
    [self drawThirdImage];
}

- (void)drawNormalImage {
    NSCompositingOperation op = NSCompositeSourceOver;
    NSImage *image = [NSImage imageNamed:@"pacman.png"];
    
    NSSize imageSize = image.size;
    
    NSPoint origin = NSMakePoint(10, 48);
    NSRect srcRect = NSMakeRect(2, imageSize.height - 50, 182, 47);
    CGFloat delta = 1.0;
    
    // draw the image
    [image drawAtPoint:origin fromRect:srcRect operation:op fraction:delta];
}

- (void)drawImageWithScale {
    NSAffineTransform *transform = [NSAffineTransform transform];
    [transform scaleBy:0.5];
    [transform concat];
    
    NSCompositingOperation op = NSCompositeSourceOver;
    NSImage *image = [NSImage imageNamed:@"pacman.png"];
    
    NSSize imageSize = image.size;
    NSPoint origin = NSMakePoint(10 * 2, (48 * 2 + 10) * 2);
    NSRect srcRect = NSMakeRect(2, imageSize.height - 50, 182, 47);

    CGFloat delta = 1;
    
    // draw the image
    [image drawAtPoint:origin fromRect:srcRect operation:op fraction:delta];
    
    // after draw the image
    [transform invert];
    [transform concat];
}

- (void)drawThirdImage {
    NSCompositingOperation op = NSCompositeSourceOver;
    NSImage *image = [NSImage imageNamed:@"pacman.png"];
    
    NSSize imageSize = image.size;
    
    NSPoint origin = NSMakePoint(10, 48 * 3);
    NSRect srcRect = NSMakeRect(2, imageSize.height - 50, 182, 47);
    CGFloat delta = .5;
    
    // draw the image
    [image drawAtPoint:origin fromRect:srcRect operation:op fraction:delta];
}

@end
