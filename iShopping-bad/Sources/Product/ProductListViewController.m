//
//  ProductListViewController.m
//  iShopping-bad
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

- (void)dealloc
{
    self.presentingViewController = nil;
    
    [super dealloc];
}

#pragma mark Accessors and mutators

@synthesize presentingViewController = m_presentingViewController;

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
    productViewController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self.presentingViewController presentModalViewController:productViewController animated:YES];
}

@end
