//
//  TabbarController.m
//  BaiSiBuDeJie
//
//  Created by mac1 on 16/2/15.
//  Copyright © 2016年 BNDK. All rights reserved.
//

#import "TabbarController.h"
#import "EssenceViewController.h"
#import "NewViewController.h"
#import "FriendTrendsViewController.h"
#import "MeViewController.h"
#import "TabBar.h"

@interface TabbarController ()

@end

@implementation TabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    EssenceViewController *essenceVC = [[EssenceViewController alloc] init];
    essenceVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"精华" image:[UIImage imageNamed:@"tabBar_essence_icon"]selectedImage:[UIImage imageNamed:@"tabBar_essence_click_icon"]];
    essenceVC.view.backgroundColor = [UIColor whiteColor];
    UINavigationController *essenceNav = [[UINavigationController alloc] initWithRootViewController:essenceVC];
    
    NewViewController *newVC = [[NewViewController alloc] init];
    newVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"新帖" image:[UIImage imageNamed:@"tabBar_new_icon"]selectedImage:[UIImage imageNamed:@"tabBar_new_click_icon"]];
    newVC.view.backgroundColor = [UIColor whiteColor];
    UINavigationController *newNav = [[UINavigationController alloc] initWithRootViewController:newVC];
    
    FriendTrendsViewController *friendTrendsVC = [[FriendTrendsViewController alloc] init];
    friendTrendsVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"关注" image:[UIImage imageNamed:@"tabBar_friendTrends_icon"]selectedImage:[UIImage imageNamed:@"tabBar_friendTrends_click_icon"]];
    friendTrendsVC.view.backgroundColor = [UIColor whiteColor];
    UINavigationController *friendTrendsNav = [[UINavigationController alloc] initWithRootViewController:friendTrendsVC];
    
    MeViewController *meVC = [[MeViewController alloc] init];
    meVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"我" image:[UIImage imageNamed:@"tabBar_me_icon"]selectedImage:[UIImage imageNamed:@"tabBar_me_click_icon"]];
    UINavigationController *meNav = [[UINavigationController alloc] initWithRootViewController:meVC];
    
    //后面有 UI_APPEARANCE_SELECTOR 可以用appearance来设置
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor grayColor]} forState:UIControlStateNormal];
    [item setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor darkGrayColor]} forState:UIControlStateSelected];
    TabBar *customTabBar = [[TabBar alloc] init];
    [self setValue:customTabBar forKey:@"tabBar"];
    self.viewControllers = @[essenceNav,newNav,friendTrendsNav,meNav];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
