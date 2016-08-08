//
//  AppController.h
//  LearnFromStart
//
//  Created by towry on 16/7/31.
//  Copyright © 2016年 towry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>

@interface AppController : NSObject

@property(weak) IBOutlet NSView *ourView;
@property(strong) NSViewController *ourViewController;

// method
- (IBAction)changeView:(id)sender;
- (void)changeViewController:(NSInteger)tag;

@end
