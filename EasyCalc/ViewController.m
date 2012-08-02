//
//  ViewController.m
//  EasyCalc
//
//  Created by iOS Camp on 8/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize display;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (IBAction)numberPressed:(UIButton *)sender {
    NSString *newDisplay = [self.display.text stringByAppendingFormat:@"%@", sender.titleLabel.text];
    self.display.text = newDisplay;
}

- (IBAction)operatorPressed:(UIButton *)sender {
    NSString *operator = sender.titleLabel.text;
    if ([operator isEqualToString:@"x"]) {
        NSLog(@"Multiply");
    } else if ([operator isEqualToString:@"÷"]) {
        NSLog(@"Divide");
    } else if ([operator isEqualToString:@"+"]) {
        NSLog(@"Add");
    } else if ([operator isEqualToString:@"-"]) {
        NSLog(@"Subtract");
    } else if ([operator isEqualToString:@"="]) {
        NSLog(@"Equate");
    }
}

- (IBAction)clearPressed:(UIButton *)sender {
    self.display.text = @"0";
}
@end
