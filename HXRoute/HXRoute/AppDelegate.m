//
//  AppDelegate.m
//  HXRoute
//
//  Created by 胡欣 on 2017/12/19.
//  Copyright © 2017年 胡欣. All rights reserved.
//

#import "AppDelegate.h"
#import <HXPRouter/HXPRouter.h>
//#import "HXRouteDefinition.h"
#import "OneVCRouteHandler.h"

@interface AppDelegate ()<HXRouteDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    HXRouter *router = [HXRouter shareHXRouter];
    router.delegate = self;
    
    HXRouteDefinition *definition = [HXRouteDefinition routeWithPattern:@"huxin://oneVC/" handler:[[OneVCRouteHandler alloc] init]];
    [router addRoute:definition];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

#pragma mark - HXRouteDelegate
- (UIViewController *)router:(HXRouter *)router sourceWithDeepLink:(HXLink *)deepLink{
    return [[UIApplication sharedApplication] keyWindow].rootViewController;
}

- (BOOL)router:(HXRouter *)router canHandleURL:(NSURL *)url{
    return true;
}

@end
