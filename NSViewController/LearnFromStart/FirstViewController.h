//
//  FirstViewController.h
//  LearnFromStart
//
//  Created by towry on 16/7/31.
//  Copyright © 2016年 towry. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface FirstViewController : NSViewController

@property(weak) IBOutlet NSButton *button;
@property(weak) IBOutlet NSTextField *textField;

- (IBAction)changeText:(id)sender;

@end
