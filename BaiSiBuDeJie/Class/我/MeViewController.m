//
//  MeViewController.m
//  BaiSiBuDeJie
//
//  Created by mac1 on 16/2/15.
//  Copyright © 2016年 BNDK. All rights reserved.
//

#import "MeViewController.h"

@interface MeViewController ()

@end

@implementation MeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"我的";
    
    //右边按钮
    UIBarButtonItem *settingItem = [UIBarButtonItem itemWithTarget:self action:@selector(settingButtonAction) image:@"mine-setting-icon" highImage:@"mine-setting-icon-click"];
    UIBarButtonItem *nightButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(nightButtonAction) image:@"mine-moon-icon" highImage:@"mine-moon-icon-click"];
    self.navigationItem.rightBarButtonItems = @[settingItem,nightButtonItem];
    self.view.backgroundColor = LCGlobelColor;
}

//设置
- (void)settingButtonAction
{
}


//夜间模式
- (void)nightButtonAction 
{
    
}

@end
