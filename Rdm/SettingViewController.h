//
//  SettingViewController.h
//  Rdm
//
//  Created by Locke Li on 2018/12/13.
//  Copyright © 2018 Locke Li. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoginViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface SettingViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

- (IBAction)logout:(id)sender;

@end

NS_ASSUME_NONNULL_END
