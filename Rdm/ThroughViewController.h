//
//  ThroughViewController.h
//  Rdm
//
//  Created by Locke Li on 2018/12/21.
//  Copyright © 2018 Locke Li. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ThroughViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property(strong,nonatomic)NSArray *throughs;

@end

NS_ASSUME_NONNULL_END
