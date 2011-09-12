//
//  iShopping_goodAppDelegate.h
//  iShopping-good
//
//  Created by Samuel Défago on 12.09.11.
//  Copyright 2011 Samuel Défago. All rights reserved.
//

@interface iShopping_goodAppDelegate : NSObject <UIApplicationDelegate> {
@private
    HLSStackController *m_stackController;
    UIWindow *m_window;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end
