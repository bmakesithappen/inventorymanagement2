//
//  AppDelegate.m
//  Inventory
//
//  Created by Christopher Constable on 3/14/16.
//  Copyright © 2016 Etsy. All rights reserved.
//

#import "AppDelegate.h"
#import "InventoryViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // Every app needs a root window
    self.window = [[UIWindow alloc] init];
    
    // Our initial view controller
    InventoryViewController *viewController = [[InventoryViewController alloc] init];
    
    // A "container controller" that will provide a nav bar
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:viewController];
    
    self.window.rootViewController = navController;
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
