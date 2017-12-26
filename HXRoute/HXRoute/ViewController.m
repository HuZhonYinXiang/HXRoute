//
//  ViewController.m
//  HXRoute
//
//  Created by 胡欣 on 2017/12/19.
//  Copyright © 2017年 胡欣. All rights reserved.
//

#import "ViewController.h"
#import <HXPRouter/HXPRouter.h>
#import "OneViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 200, 40);
    [button setTitle:@"One" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(pushOneView) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)pushOneView{
    HXRouter *router = [HXRouter shareHXRouter];
//    [router handleURL:[NSURL URLWithString:@"huxin://oneVC/?type=1"] withSource:self parameters:nil completion:^(NSDictionary * _Nullable response, NSError * _Nullable error) {
//        if (response) {
//
//        }
//    }];
    [router handleURL:[NSURL URLWithString:@"huxin://oneVC/?type=1"] withSource:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
