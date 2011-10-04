//
//  ContentViewController.m
//  LifecycleTester
//
//  Created by Samuel Défago on 18.09.11.
//  Copyright 2011 Samuel Défago. All rights reserved.
//

#import "ContentViewController.h"

#import "ModalViewController.h"

@implementation ContentViewController

#pragma mark Object creation and destruction

- (id)init
{
    if ((self = [super initWithNibName:[self className] bundle:nil])) {
        self.title = @"ContentViewController";
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

- (IBAction)displayModal:(id)sender
{
    ModalViewController *modalViewController = [[[ModalViewController alloc] init] autorelease];
    [self presentModalViewController:modalViewController animated:YES];
}

@end
