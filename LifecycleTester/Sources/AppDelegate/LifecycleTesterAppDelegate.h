//
//  LifecycleTesterAppDelegate.h
//  LifecycleTester
//
//  Created by Samuel Défago on 18.09.11.
//  Copyright 2011 Samuel Défago. All rights reserved.
//

@interface LifecycleTesterAppDelegate : NSObject <UIApplicationDelegate> {
@private
    UIWindow *m_window;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end
