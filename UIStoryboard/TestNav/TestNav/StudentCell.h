//
//  StudentCell.h
//  TestNav
//
//  Created by gaokunpeng on 15/8/5.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StudentModel.h"

@interface StudentCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@property (weak, nonatomic) IBOutlet UILabel *genderLabel;

- (void)configModel:(StudentModel *)model;


@end
