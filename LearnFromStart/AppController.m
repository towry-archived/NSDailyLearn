//
//  AppController.m
//  LearnFromStart
//
//  Created by towry on 16/7/31.
//  Copyright © 2016年 towry. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "AppController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"

@implementation AppController

// constants
enum {
	kFirstViewTag = 0,
	kSecondViewTag
};

NSString *const kFirstView = @"FirstViewController";
NSString *const kSecondView = @"SecondViewController";

- (void)awakeFromNib {
	[self changeViewController:kFirstViewTag];
	_ourView.wantsLayer = YES;
	_ourView.layer.backgroundColor = [NSColor cyanColor].CGColor;
}

- (IBAction)changeView:(id)sender {
	NSInteger tag = [[sender selectedCell] tag];
	[self changeViewController:tag];
}

- (void)changeViewController:(NSInteger)tag {
//	NSLog(@"Changed tag: %zd", tag);
	// remove
	[[_ourViewController view] removeFromSuperview];
	
	switch (tag) {
		case kFirstViewTag:
			self.ourViewController = [[FirstViewController alloc] initWithNibName:kFirstView bundle:nil];
			break;
		case kSecondViewTag:
			self.ourViewController = [[SecondViewController alloc] initWithNibName:kSecondView bundle:nil];
			break;
	}
	
	[_ourView addSubview:[_ourViewController view]];
	[[_ourViewController view] setFrame:[_ourView bounds]];
	[[_ourViewController view] setAutoresizingMask:NSViewWidthSizable | NSViewHeightSizable];
}

@end
