//
//  CartItemListViewController.h
//  iShopping-good
//
//  Created by Samuel Défago on 14.09.11.
//  Copyright 2011 Samuel Défago. All rights reserved.
//

@interface CartItemListViewController : HLSViewController <UITableViewDataSource, UITableViewDelegate> {
@private
    UITableView *m_itemTableView;
    UIButton *m_checkoutButton;
}

@property (nonatomic, retain) IBOutlet UITableView *itemTableView;
@property (nonatomic, retain) IBOutlet UIButton *checkoutButton;

- (IBAction)checkout:(id)sender;
- (IBAction)showDetails:(id)sender;

@end
