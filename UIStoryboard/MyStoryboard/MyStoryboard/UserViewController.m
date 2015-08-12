//
//  UserViewController.m
//  MyStoryboard
//
//  Created by gaokunpeng on 15/8/5.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "UserViewController.h"
#import "LoginViewController.h"

@interface UserViewController ()

@end

@implementation UserViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)loginAction:(id)sender {
    
    //跳转到登陆界面
    [self performSegueWithIdentifier:@"loginSegue" sender:nil];
}

//传递参数
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    id destCtrl = segue.destinationViewController;
    if ([destCtrl isKindOfClass:[LoginViewController class]]) {
        
        LoginViewController *ctrl = (LoginViewController *)destCtrl;
        //参数
        ctrl.infoStr = [NSString stringWithFormat:@"%@登陆了",self.usernameTextField.text];
    }
}

//点击隐藏键盘
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.usernameTextField resignFirstResponder];
    [self.pwdTextField resignFirstResponder];
}


@end
