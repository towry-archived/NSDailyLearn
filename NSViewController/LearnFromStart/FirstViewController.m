//
//  FirstViewController.m
//  LearnFromStart
//
//  Created by towry on 16/7/31.
//  Copyright © 2016年 towry. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
	[_button setTarget:self];
	[_button setAction:@selector(changeText:)];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
	self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
	if (self) {
		// Iititalize code here.
	}
	
	return self;
}

- (IBAction)changeText:(id)sender {
	[_textField setStringValue:@"Changed Value"];
}

@end
