//
//  NewViewController.m
//  BaiSiBuDeJie
//
//  Created by mac1 on 16/2/15.
//  Copyright © 2016年 BNDK. All rights reserved.
//

#import "NewViewController.h"

@interface NewViewController ()

@end

@implementation NewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //标题
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
    //左边按钮
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(tagButtonAction:) image:@"MainTagSubIcon" highImage:@"MainTagSubIconClick"];
}

- (void)tagButtonAction:(UIButton *)button
{
    
}

@end
