//
//  LoginViewController.h
//  MyStoryboard
//
//  Created by gaokunpeng on 15/8/5.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *infoLabel;

//参数
@property (nonatomic,strong)NSString *infoStr;

@end
