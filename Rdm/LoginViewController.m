//
//  LoginViewController.m
//  Rdm
//
//  Created by Locke Li on 2018/12/7.
//  Copyright © 2018 Locke Li. All rights reserved.
//

#import "LoginViewController.h"
#import "Reachability.h"
#define kCompanyName @"瑞达软件"
#define kUserName @"瑞达软件"
#define kPassword @"123456"

@interface LoginViewController ()

@end

@implementation LoginViewController
@synthesize companyName;
@synthesize userName;
@synthesize password;
@synthesize message;
NSUserDefaults *userDefaults;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.theScroller.contentSize = CGSizeMake([[UIScreen mainScreen]bounds].size.width, 300.0);
    
}

- (IBAction)login:(id)sender {
//    UIAlertView *alert;
    RDUser *user=[[RDUser alloc]init];
    
    NSString *site=@"60.174.220.165";
    Reachability *reach=[Reachability reachabilityWithHostName:site];
    switch ([reach currentReachabilityStatus]) {
        case NotReachable:
            [self showAlert:[NSString stringWithFormat:@"不能访问%@",site] andTitle:@"访问网络"];
            break;
        case ReachableViaWWAN:
            [self showAlert:[NSString stringWithFormat:@"使用3G/4G访问网络%@",site] andTitle:@"访问网络"];
            break;
        case ReachableViaWiFi:
            [self showAlert:[NSString stringWithFormat:@"使用Wi-Fi访问网络%@",site] andTitle:@"访问网络"];
            break;
        default:
            break;
    }
    NSURL* url=[NSURL URLWithString:@"http://60.174.220.165:8001/ios/user/login.do"];
    NSString* str=[NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"%@",str);
    
    if ([companyName.text isEqualToString: @"瑞达软件"] && [userName.text isEqualToString: @"瑞达软件"] && [password.text isEqualToString: @"123456"]) {
        [user initCompanyName:companyName.text userName:userName.text password:password.text];
        [self performSegueWithIdentifier:@"toMain" sender:sender];
    }else{
        [self showAlert:@"用户名或密码错误!" andTitle:@"提示"];
    }
}

-(void)showAlert:(NSString *)msg andTitle:(NSString*)title{
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:title message:msg delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    [alert show];
}
- (IBAction)hideKeyboard:(id)sender {
    [companyName resignFirstResponder];
    [userName resignFirstResponder];
    [password resignFirstResponder];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
}
@end
