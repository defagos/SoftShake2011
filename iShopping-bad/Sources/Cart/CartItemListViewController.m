//
//  CartItemListViewController.m
//  iShopping-bad
//
//  Created by Samuel Défago on 14.09.11.
//  Copyright 2011 Samuel Défago. All rights reserved.
//

#import "CartItemListViewController.h"

#import "CartItemTableViewCell.h"
#import "ProductViewController.h"

@implementation CartItemListViewController

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

- (void)releaseViews
{
    [super releaseViews];
    
    self.itemTableView = nil;
    self.checkoutButton = nil;
}

#pragma mark Accessors and mutators

@synthesize itemTableView = m_itemTableView;

@synthesize checkoutButton = m_checkoutButton;

@synthesize presentingViewController = m_presentingViewController;

#pragma mark View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.itemTableView.dataSource = self;
    self.itemTableView.delegate = self;
    
    [self.itemTableView reloadData];
}

#pragma mark Orientation management

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    if (! [super shouldAutorotateToInterfaceOrientation:toInterfaceOrientation]) {
        return NO;
    }
    
    return YES;
}

#pragma mark UITableViewDataSource protocol implementation

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath 
{
    CartItemTableViewCell *cell = [CartItemTableViewCell cellForTableView:tableView];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

#pragma mark UITableViewDelegate protocol implementation

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [CartItemTableViewCell height];
}

#pragma mark Event callbacks

- (IBAction)showDetails:(id)sender
{
    ProductViewController *productViewController = [[[ProductViewController alloc] init] autorelease];
    productViewController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self.presentingViewController presentModalViewController:productViewController animated:YES];
}

@end
