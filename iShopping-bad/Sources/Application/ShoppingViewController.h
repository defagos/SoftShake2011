//
//  ShoppingViewController.h
//  iShopping-bad
//
//  Created by Samuel Défago on 12.09.11.
//  Copyright 2011 Samuel Défago. All rights reserved.
//

@interface ShoppingViewController : HLSViewController {
@private
    NSInteger m_selectedIndex;
    UIView *m_placeholderView;
    UIViewController *m_containedViewController;
}

@property (nonatomic, retain) IBOutlet UIView *placeholderView;

- (IBAction)showShop:(id)sender;
- (IBAction)showCart:(id)sender;
- (IBAction)checkout:(id)sender;
- (IBAction)goBackwards:(id)sender;

@end
