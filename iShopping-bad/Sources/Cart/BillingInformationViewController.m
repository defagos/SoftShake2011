//
//  BillingInformationViewController.m
//  iShopping-bad
//
//  Created by Samuel Défago on 14.09.11.
//  Copyright 2011 Samuel Défago. All rights reserved.
//

#import "BillingInformationViewController.h"

@implementation BillingInformationViewController

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

- (IBAction)submitOrder:(id)sender
{
    UIAlertView *alertView = [[[UIAlertView alloc] initWithTitle:nil 
                                                         message:@"Your order has been submitted" 
                                                        delegate:nil 
                                               cancelButtonTitle:@"Dismiss"
                                               otherButtonTitles:nil, nil]
                              autorelease];
    [alertView show];
}

@end
