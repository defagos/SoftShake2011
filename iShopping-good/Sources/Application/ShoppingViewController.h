//
//  ShoppingViewController.h
//  iShopping-good
//
//  Created by Samuel Défago on 12.09.11.
//  Copyright 2011 Samuel Défago. All rights reserved.
//

@interface ShoppingViewController : HLSPlaceholderViewController {
@private
    NSInteger m_selectedIndex;
}

- (IBAction)showShop:(id)sender;
- (IBAction)showCart:(id)sender;

@end
