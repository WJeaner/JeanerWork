//
//  DetailViewController.h
//  MyStoryboard
//
//  Created by gaokunpeng on 15/8/5.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;

//参数
@property (nonatomic,strong)NSString *userInfo;

@end
