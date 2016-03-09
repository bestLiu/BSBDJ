//
//  tabBar.m
//  BaiSiBuDeJie
//
//  Created by mac1 on 16/2/15.
//  Copyright © 2016年 BNDK. All rights reserved.
//

#import "TabBar.h"

@interface TabBar ()

@property (strong, nonatomic) UIButton *publishButton;

@end

@implementation TabBar

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setBackgroundImage:[UIImage imageNamed:@"tabbar-light"]];
        self.publishButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.publishButton setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [self.publishButton setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        [self addSubview:self.publishButton];
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    //设置发布按钮的frame
    self.publishButton.frame = CGRectMake(0, 0, self.publishButton.currentBackgroundImage.size.width, self.publishButton.currentBackgroundImage.size.height);
    self.publishButton.center = CGPointMake(self.frame.size.width * 0.5, self.frame.size.height * 0.5);
    
    //设置其他按钮的frame
    CGFloat buttonY = 0;
    CGFloat buttonWidth = self.frame.size.width / 5;
    CGFloat buttonHeight = self.frame.size.height;
    
    NSInteger index = 0;
    for (UIView *button in self.subviews) {
        if (![button isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            continue;
        }
        CGFloat buttonX = buttonWidth * ((index > 1)?index + 1:index) ;
        button.frame = CGRectMake(buttonX, buttonY, buttonWidth, buttonHeight);
        
        index ++;
    }
    
    
}
@end
