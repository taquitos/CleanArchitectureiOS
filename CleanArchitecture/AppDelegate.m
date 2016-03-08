//
//  AppDelegate.m
//  CleanArchitecture
//
//  Created by Joshua Liebowitz on 3/8/16.
//  Copyright © 2016 Joshua Liebowitz. All rights reserved.
//

#import "AppDelegate.h"
#import "JLAuthenticationInfo.h"
#import "JLTimelineViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    _window = [[UIWindow alloc] init];
    JLAuthenticationInfo *authInfo = [[JLAuthenticationInfo alloc] init];

    self.window.rootViewController = [[JLTimelineViewController alloc] initWithAuthenticationInfo:authInfo];
    [self.window makeKeyAndVisible];
    return YES;
}
@end
