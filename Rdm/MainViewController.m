//
//  MainViewController.m
//  Rdm
//
//  Created by Locke Li on 2018/12/20.
//  Copyright © 2018 Locke Li. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController
@synthesize tableView;
@synthesize operaters;
@synthesize xunjians;
@synthesize energys;
@synthesize warnings;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    operaters = [[NSArray alloc]initWithObjects:@"低压柜",@"高压柜",@"消防火灾",@"智能设备",@"直流屏",@"PT柜",@"环境", nil];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 4;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    int rowNum;
    switch (section) {
        case 0:case 2:
            rowNum = 1;
            break;
            case 1:case 3:
            rowNum = 2;
            break;
        default:
            rowNum = 2;
            break;
    }
    return rowNum;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    NSString *title;
    switch (section) {
        case 0:
            title = @"电力运维业务";
            break;
        case 1:
            title = @"巡检管理";
            break;
        case 2:
            title = @"能源管理业务";
            break;
        case 3:
            title = @"故障处理业务";
            break;
        default:
            break;
    }
    return title;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"mainCell"];
//    switch (indexPath.row) {
//        case 0:
//            
//            break;
//            
//        default:
//            break;
//    }
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}
@end
