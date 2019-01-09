//
//  HelpViewController.m
//  Rdm
//
//  Created by Locke Li on 2018/12/21.
//  Copyright © 2018 Locke Li. All rights reserved.
//

#import "HelpViewController.h"

@interface HelpViewController ()

@end

@implementation HelpViewController
@synthesize helps;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    helps = [[NSArray alloc]initWithObjects:@"什么叫电力系统的稳定与振荡",@"什么是二次回路",@"什么是消弧线圈的欠补偿",@"什么是电力系统短路故障",@"什么是电力负荷", nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [helps count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"helpCell"];
    cell.textLabel.text = helps[indexPath.row];
    return cell;
}
@end
