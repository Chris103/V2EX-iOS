//
//  XYTabBarController.m
//  V2EX-iOS
//
//  Created by sean on 16/3/23.
//  Copyright © 2016年 usean. All rights reserved.
//

#import "XYTabBarController.h"
#import "XYNavigationController.h"
#import "XYTopicController.h"
#import "XYNodeController.h"
#import "XYProfileController.h"

@interface XYTabBarController ()

@end

@implementation XYTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 帖子
    XYTopicController *topicVc = [[XYTopicController alloc] init];
     [self setUpChildVc:topicVc title:@"帖子" imageName:@"tabBar_essence_icon" selectedImageName:@"tabBar_essence_click_icon"];
    // 节点
    XYNodeController *nodeVc = [[XYNodeController alloc] init];
    [self setUpChildVc:nodeVc title:@"节点" imageName:@"tabBar_new_icon" selectedImageName:@"tabBar_new_click_icon"];
    // 我
    XYProfileController *profileVc = [[XYProfileController alloc] init];
    [self setUpChildVc:profileVc title:@"我" imageName:@"mine-setting-icon" selectedImageName:@"mine-setting-icon-click"];
    
}

#pragma  mark -- 设置tabbar子控制器
- (void)setUpChildVc:(UIViewController *)vc title:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName
{
    vc.title = title;
    // 设置nomal图片渲染
    UIImage *image = [UIImage imageNamed:imageName];
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.image = image;
    // 设置 click 图片渲染
    UIImage *selectedImage = [UIImage imageNamed:selectedImageName];
    selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.selectedImage = selectedImage;
    
    [self addChildViewController:[[XYNavigationController alloc] initWithRootViewController:vc] ];
}
@end
