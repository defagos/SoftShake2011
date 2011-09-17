//
//  ProductListViewController.h
//  iShopping-bad
//
//  Created by Samuel Défago on 12.09.11.
//  Copyright 2011 Samuel Défago. All rights reserved.
//

@interface ProductListViewController : HLSViewController {
@private
    UIViewController *m_presentingViewController;
}

@property (nonatomic, assign) UIViewController *presentingViewController;

- (IBAction)showDetails:(id)sender;

@end
