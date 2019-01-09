//
//  LoginViewController.h
//  Rdm
//
//  Created by Locke Li on 2018/12/7.
//  Copyright © 2018 Locke Li. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Reachability.h"
#import "RDUser.h"

@interface LoginViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *companyName;
@property (strong, nonatomic) IBOutlet UITextField *userName;
@property (strong, nonatomic) IBOutlet UITextField *password;
@property (strong, nonatomic) IBOutlet UILabel *message;
@property (strong, nonatomic) IBOutlet UIScrollView *theScroller;

- (IBAction)login:(id)sender;
- (IBAction)hideKeyboard:(id)sender;
    
@end

