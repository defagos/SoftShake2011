//
//  ShoppingViewController.m
//  iShopping-good
//
//  Created by Samuel Défago on 12.09.11.
//  Copyright 2011 Samuel Défago. All rights reserved.
//

#import "ShoppingViewController.h"

#import "CartItemListViewController.h"
#import "ProductListViewController.h"

typedef enum {
    ShoppingTabIndexEnumBegin = 0,
    ShoppingTabIndexShop = ShoppingTabIndexEnumBegin,
    ShoppingTabIndexCart,
    ShoppingTabIndexEnumEnd,
    ShoppingTabIndexEnumSize = ShoppingTabIndexEnumEnd - ShoppingTabIndexEnumBegin
} ShoppingTabIndex;

@interface ShoppingViewController ()

- (void)setSelectedIndex:(NSInteger)selectedIndex;

@end

@implementation ShoppingViewController

#pragma mark Object creation and destruction

- (id)init
{
    if ((self = [super initWithNibName:[self className] bundle:nil])) {
        m_selectedIndex = ShoppingTabIndexShop;
        self.stretchingContent = YES;   
    }
    return self;
}

#pragma mark View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setSelectedIndex:m_selectedIndex];
}

#pragma mark Orientation management

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    if (! [super shouldAutorotateToInterfaceOrientation:toInterfaceOrientation]) {
        return NO;
    }
    
    return YES;
}

#pragma mark Tab management

- (void)setSelectedIndex:(NSInteger)selectedIndex
{
    if (selectedIndex == ShoppingTabIndexShop) {
        self.insetViewController = [[[ProductListViewController alloc] init] autorelease];
    }
    else if (selectedIndex == ShoppingTabIndexCart) {
        CartItemListViewController *cartItemListViewController = [[[CartItemListViewController alloc] init] autorelease];
        HLSStackController *stackController = [[[HLSStackController alloc] initWithRootViewController:cartItemListViewController] autorelease];
        stackController.stretchingContent = YES;
        self.insetViewController = stackController;
    }
    else {
        HLSLoggerError(@"Unknown tab");
    }
    
    m_selectedIndex = selectedIndex;
}

#pragma mark Event callbacks

- (IBAction)showShop:(id)sender
{
    [self setSelectedIndex:ShoppingTabIndexShop];
}

- (IBAction)showCart:(id)sender
{
    [self setSelectedIndex:ShoppingTabIndexCart];
}

@end
