//
//  RootViewController.m
//  LifecycleTester
//
//  Created by Samuel Défago on 18.09.11.
//  Copyright 2011 Samuel Défago. All rights reserved.
//

#import "RootViewController.h"

#import "ContentViewController.h"

@implementation RootViewController

#pragma mark Object creation and destruction

- (id)init
{
    if ((self = [super initWithNibName:[self className] bundle:nil])) {
        self.title = @"RootViewController";
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

- (IBAction)push:(id)sender
{
    ContentViewController *contentViewController = [[[ContentViewController alloc] init] autorelease];
    [self.navigationController pushViewController:contentViewController animated:YES];
}

@end
