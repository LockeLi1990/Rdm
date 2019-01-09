//
//  IpViewController.m
//  Rdm
//
//  Created by Locke Li on 2018/12/24.
//  Copyright © 2018 Locke Li. All rights reserved.
//

#import "IpViewController.h"
#define kUrl @"60.174.220.165"
#define kPort @"8001"

@interface IpViewController ()

@end

@implementation IpViewController
@synthesize url;
@synthesize port;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    url.text = [userDefaults stringForKey:kUrl];
    port.text = [userDefaults stringForKey:kPort];
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    UIViewController *destination = segue.destinationViewController;
    // Pass the selected object to the new view controller.
    
}

- (IBAction)submit:(id)sender {
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setObject:url.text forKey:kUrl];
    [userDefaults setObject:port.text forKey:kPort];
    [userDefaults synchronize];
    NSLog(@"%@",kUrl);
}
@end
