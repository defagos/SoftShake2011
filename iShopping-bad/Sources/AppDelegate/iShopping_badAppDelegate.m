//
//  iShopping_badAppDelegate.m
//  iShopping-bad
//
//  Created by Samuel Défago on 12.09.11.
//  Copyright 2011 Samuel Défago. All rights reserved.
//

#import "iShopping_badAppDelegate.h"

@implementation iShopping_badAppDelegate

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
    
    return YES;
}

@end
