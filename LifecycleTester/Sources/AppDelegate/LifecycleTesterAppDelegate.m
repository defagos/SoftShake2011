//
//  LifecycleTesterAppDelegate.m
//  LifecycleTester
//
//  Created by Samuel Défago on 18.09.11.
//  Copyright 2011 Samuel Défago. All rights reserved.
//

#import "LifecycleTesterAppDelegate.h"

#import "RootViewController.h"

@implementation LifecycleTesterAppDelegate

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
    
    RootViewController *rootViewController = [[[RootViewController alloc] init] autorelease];
    self.window.rootViewController = [[[UINavigationController alloc] initWithRootViewController:rootViewController] autorelease];
    
    return YES;
}

@end
