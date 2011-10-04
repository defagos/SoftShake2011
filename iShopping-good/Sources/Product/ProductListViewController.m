//
//  ProductListViewController.m
//  iShopping-good
//
//  Created by Samuel Défago on 12.09.11.
//  Copyright 2011 Samuel Défago. All rights reserved.
//

#import "ProductListViewController.h"

#import "ProductViewController.h"

@implementation ProductListViewController

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

- (IBAction)showDetails:(id)sender;
{
    ProductViewController *productViewController = [[[ProductViewController alloc] init] autorelease];
    [self.placeholderViewController.stackController pushViewController:productViewController withTransitionStyle:HLSTransitionStyleFadeIn];
}

@end
