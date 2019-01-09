//
//  HelpViewController.h
//  Rdm
//
//  Created by Locke Li on 2018/12/21.
//  Copyright © 2018 Locke Li. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HelpViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property(strong,nonatomic)NSArray *helps;

@end

NS_ASSUME_NONNULL_END
