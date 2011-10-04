//
//  ShoppingViewController.m
//  iShopping-bad
//
//  Created by Samuel Défago on 12.09.11.
//  Copyright 2011 Samuel Défago. All rights reserved.
//

#import "ShoppingViewController.h"

#import "BillingInformationViewController.h"
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

@property (nonatomic, retain) UIViewController *containedViewController;

- (void)setSelectedIndex:(NSInteger)selectedIndex;

- (void)displayViewController:(UIViewController *)viewController;

@end

@implementation ShoppingViewController

#pragma mark Object creation and destruction

- (id)init
{
    if ((self = [super initWithNibName:[self className] bundle:nil])) {
        m_selectedIndex = ShoppingTabIndexShop;
    }
    return self;
}

- (void)dealloc
{
    self.containedViewController = nil;
    
    [super dealloc];
}

- (void)releaseViews
{
    [super releaseViews];
    
    self.placeholderView = nil;
}

#pragma mark Accessors and mutators

@synthesize placeholderView = m_placeholderView;

@synthesize containedViewController = m_containedViewController;

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
    // Install the new one
    if (selectedIndex == ShoppingTabIndexShop) {
        ProductListViewController *productListViewController = [[[ProductListViewController alloc] init] autorelease];
        productListViewController.presentingViewController = self;
        [self displayViewController:productListViewController];
    }
    else if (selectedIndex == ShoppingTabIndexCart) {
        CartItemListViewController *cartItemListViewController = [[[CartItemListViewController alloc] init] autorelease];
        cartItemListViewController.presentingViewController = self;
        [self displayViewController:cartItemListViewController];
    }
    else {
        HLSLoggerError(@"Unknown tab");
    }
        
    m_selectedIndex = selectedIndex;
}

#pragma mark View controller management

- (void)displayViewController:(UIViewController *)viewController
{
    // Remove the previously installed view controller
    [self.containedViewController.view removeFromSuperview];
    
    // Install the new one
    self.containedViewController = viewController;
    [self.placeholderView addSubview:self.containedViewController.view];
    self.containedViewController.view.frame = self.placeholderView.bounds;
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

- (IBAction)checkout:(id)sender
{
    BillingInformationViewController *billingInformationViewController = [[[BillingInformationViewController alloc] init] autorelease];
    [self displayViewController:billingInformationViewController];
}

- (IBAction)goBackwards:(id)sender
{
    CartItemListViewController *cartItemListViewController = [[[CartItemListViewController alloc] init] autorelease];
    cartItemListViewController.presentingViewController = self;
    [self displayViewController:cartItemListViewController];
}

@end
