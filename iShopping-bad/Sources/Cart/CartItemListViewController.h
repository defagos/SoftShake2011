//
//  CartItemListViewController.h
//  iShopping-bad
//
//  Created by Samuel Défago on 14.09.11.
//  Copyright 2011 Samuel Défago. All rights reserved.
//

@interface CartItemListViewController : HLSViewController <UITableViewDataSource, UITableViewDelegate> {
@private
    UITableView *m_itemTableView;
    UIButton *m_checkoutButton;
    UIViewController *m_presentingViewController;
}

@property (nonatomic, retain) IBOutlet UITableView *itemTableView;
@property (nonatomic, retain) IBOutlet UIButton *checkoutButton;
@property (nonatomic, assign) UIViewController *presentingViewController;

- (IBAction)showDetails:(id)sender;

@end
