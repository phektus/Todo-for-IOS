//
//  TodoAppDelegate.m
//  Todo
//
//  Created by Arbie Samong on 6/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TodoAppDelegate.h"
#import "TodoViewController.h"

@implementation TodoAppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    nc = [[UINavigationController alloc] init];
    
    TodoViewController *tvc = [[TodoViewController alloc] init];
    [nc pushViewController:tvc animated:YES];
    
    [self.window addSubview:nc.view];
    
    return YES;
}

@end
