//
//  ViewController.m
//  TestPresent
//
//  Created by gaokunpeng on 15/8/5.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//storyboard传参
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //从哪一个视图控制器跳转
    //id sCtrl = segue.sourceViewController;
    //跳转后的视图控制器对象
    id destCtrl = segue.destinationViewController;
    
    if ([destCtrl isKindOfClass:[SecondViewController class]]) {
        //传递参数
        SecondViewController *secondCtrl = (SecondViewController *)destCtrl;
        secondCtrl.param = @"参数二";
        
    }
}
//第二种方式
- (IBAction)click2ndBtn:(id)sender {
    /*
     第一个参数:segue对象的标示符
     第二个参数:触发跳转的对象(nil)
     */
    [self performSegueWithIdentifier:@"secondSegue" sender:nil];
    
}

//第三种方式
- (IBAction)click3rdBtn:(id)sender {
    
    //创建视图控制器对象
    /*
     第一个参数:storyboard文件的名字
     第二个参数:nil(mainBundle)
     */
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    //参数:视图控制器在storyboard里面的标示符
    ThirdViewController *thirdCtrl = [sb instantiateViewControllerWithIdentifier:@"third"];
    thirdCtrl.param = @"第三个参数";
    
    [self presentViewController:thirdCtrl animated:YES completion:nil];
}
@end
