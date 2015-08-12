//
//  ListViewController.m
//  TestNav
//
//  Created by gaokunpeng on 15/8/5.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "ListViewController.h"
#import "StudentModel.h"
#import "StudentCell.h"
#import "DetailViewController.h"

@interface ListViewController ()
{
    //数据源
    NSMutableArray *_dataArray;
}
@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    //初始化数据源
    [self createData];
    
    /*
    //如果是代码的方式
    [self.tableView registerClass:[StudentCell class] forCellReuseIdentifier:@"cellId"];
    [self.tableView registerNib:[UINib nibWithNibName:@"XXX" bundle:nil] forCellReuseIdentifier:@"cellId"];
     */
    
}
//初始化数据源
- (void)createData
{
    _dataArray = [NSMutableArray array];
    for (int i=0; i<20; i++) {
        //创建模型对象
        StudentModel *model = [[StudentModel alloc] init];
        model.name = [NSString stringWithFormat:@"第%d个学生",i];
        model.age = 20+arc4random()%10;
        if (i % 2==0) {
            model.gender = @"男";
        }else{
            model.gender = @"女";
        }
        
        [_dataArray addObject:model];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return _dataArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    StudentCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellId" forIndexPath:indexPath];
    
    // Configure the cell...
    StudentModel *model = _dataArray[indexPath.row];
    [cell configModel:model];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    id destCtrl = segue.destinationViewController;
    if ([destCtrl isKindOfClass:[DetailViewController class]]) {
        
        DetailViewController *detailCtrl = (DetailViewController *)destCtrl;
        
        //获取cell对象
        //跳转事件是点击cell触发的
        if ([sender isKindOfClass:[StudentCell class]]) {
            StudentCell *cell = (StudentCell *)sender;
            
            //传参
            detailCtrl.param = cell.nameLabel.text;
        }
        
    }
    
    
}


@end
