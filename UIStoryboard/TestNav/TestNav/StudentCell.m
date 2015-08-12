//
//  StudentCell.m
//  TestNav
//
//  Created by gaokunpeng on 15/8/5.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "StudentCell.h"

@implementation StudentCell

-(void)configModel:(StudentModel *)model
{
    self.nameLabel.text = model.name;
    self.ageLabel.text = [NSString stringWithFormat:@"年龄:%d",model.age];
    self.genderLabel.text = [NSString stringWithFormat:@"性别:%@",model.gender];
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
