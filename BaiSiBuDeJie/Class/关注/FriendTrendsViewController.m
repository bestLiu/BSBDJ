//
//  FriendTrendsViewController.m
//  BaiSiBuDeJie
//
//  Created by mac1 on 16/2/15.
//  Copyright © 2016年 BNDK. All rights reserved.
//

#import "FriendTrendsViewController.h"

@interface FriendTrendsViewController ()

@end

@implementation FriendTrendsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //标题
    self.navigationItem.title = @"我的关注";
    
    //左边按钮
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(friendsRecommentButtonAction:) image:@"friendsRecommentIcon" highImage:@"friendsRecommentIcon-click"];
    self.view.backgroundColor = LCGlobelColor;
}

- (void)friendsRecommentButtonAction:(UIButton *)button
{
    NSLog(@"%s",__func__);
}

@end
