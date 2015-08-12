//
//  MainTabBarController.m
//  TestTabBarCtrl
//
//  Created by gaokunpeng on 15/8/5.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "MainTabBarController.h"

@interface MainTabBarController ()

@end

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //修改选中图片
    UITabBarItem *item1 = self.tabBar.items[0];
    item1.selectedImage = [[UIImage imageNamed:@"tabbar_limitfree_press"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UITabBarItem *item2 = self.tabBar.items[1];
    item2.selectedImage = [[UIImage imageNamed:@"tabbar_appfree_press"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    
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
