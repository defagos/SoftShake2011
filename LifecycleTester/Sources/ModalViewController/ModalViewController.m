//
//  ModalViewController.m
//  LifecycleTester
//
//  Created by Samuel Défago on 18.09.11.
//  Copyright 2011 Samuel Défago. All rights reserved.
//

#import "ModalViewController.h"

@implementation ModalViewController

#pragma mark Object creation and destruction

- (id)init
{
    if ((self = [super initWithNibName:[self className] bundle:nil])) {
        
    }
    return self;
}

#pragma mark Orientation management

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    if (! [super shouldAutorotateToInterfaceOrientation:toInterfaceOrientation]) {
        return NO;
    }
    
    return YES;
}

#pragma mark Event callbacks

- (IBAction)close:(id)sender
{
    [self dismissModalViewControllerAnimated:YES];
}

@end
