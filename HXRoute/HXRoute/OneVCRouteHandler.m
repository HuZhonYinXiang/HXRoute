//
//  OneVCRouteHandler.m
//  HXRoute
//
//  Created by 胡欣 on 2017/12/25.
//  Copyright © 2017年 胡欣. All rights reserved.
//

#import "OneVCRouteHandler.h"
#import <HXPRouter/HXPRouter.h>
#import "OneViewController.h"

@implementation OneVCRouteHandler

- (HXROuteHandlerTransitionStyle)style{
    return HXROuteHandlerTransitionStylePresentation;
}

- (UIViewController *)targetViewControllerWithDeepLink:(HXLink *)deepLink source:(UIViewController *)sourceViewController error:(NSError *__autoreleasing *)error{
    return [[OneViewController alloc] init];
}

- (void)showViewController:(UIViewController *)targetViewController source:(UIViewController *)sourceViewController deepLink:(HXLink *)deepLink{
//    NSLog(@"%@",deepLink.parameters);
    if (targetViewController && sourceViewController) {
        [sourceViewController presentViewController:targetViewController animated:true completion:nil];
    }
}

@end
