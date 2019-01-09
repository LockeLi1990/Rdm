//
//  ThroughViewController.m
//  Rdm
//
//  Created by Locke Li on 2018/12/21.
//  Copyright © 2018 Locke Li. All rights reserved.
//

#import "ThroughViewController.h"

@interface ThroughViewController ()

@end

@implementation ThroughViewController
@synthesize throughs;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    throughs = [[NSArray alloc]initWithObjects:@"业务咨询直通车",@"区域合作直通车", nil];
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
    return [throughs count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"throughCell"];
    cell.textLabel.text = throughs[indexPath.row];
    return cell;
}
@end
