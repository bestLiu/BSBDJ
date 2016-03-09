//
//  LCNavigationController.m
//  BaiSiBuDeJie
//
//  Created by mac1 on 16/3/9.
//  Copyright © 2016年 BNDK. All rights reserved.
//

#import "LCNavigationController.h"

@interface LCNavigationController ()

@end

@implementation LCNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.navigationBar.tintColor  = [UIColor lightGrayColor];
    
    UINavigationBar *navBar = [UINavigationBar appearanceWhenContainedIn:[self class],nil];
    [navBar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:UIBarMetricsDefault];
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.childViewControllers.count > 0) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setTitle:@"返回" forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:@"navigationButtonReturn"] forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:@"navigationButtonReturnClick"] forState:UIControlStateHighlighted];
        button.size = CGSizeMake(70, 30);
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
        button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        button.contentEdgeInsets = UIEdgeInsetsMake(0, -10 , 0, 0);
        [button addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        
        viewController.hidesBottomBarWhenPushed = YES;
        viewController.navigationController.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    }
    
    
    [super pushViewController:viewController animated:animated];
}

- (void)back
{
    [self popViewControllerAnimated:YES];
}


@end
