//
//  iShopping_goodAppDelegate.m
//  iShopping-good
//
//  Created by Samuel Défago on 12.09.11.
//  Copyright 2011 Samuel Défago. All rights reserved.
//

#import "iShopping_goodAppDelegate.h"

#import "ShoppingViewController.h"

@implementation iShopping_goodAppDelegate

#pragma mark Object creation and destruction

- (void)dealloc
{
    self.window = nil;
    
    [super dealloc];
}

#pragma mark Accessors and mutators


@synthesize window = m_window;

#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [self.window makeKeyAndVisible];
    
    ShoppingViewController *shoppingViewController = [[[ShoppingViewController alloc] init] autorelease];
    HLSStackController *stackController = [[[HLSStackController alloc] initWithRootViewController:shoppingViewController] autorelease];
    stackController.stretchingContent = YES;
    
    self.window.rootViewController = stackController;
    
    return YES;
}

@end
