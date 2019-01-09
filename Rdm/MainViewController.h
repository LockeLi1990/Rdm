//
//  MainViewController.h
//  Rdm
//
//  Created by Locke Li on 2018/12/20.
//  Copyright © 2018 Locke Li. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IconCollectionViewCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface MainViewController : UIViewController<UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong,nonatomic)NSArray *operaters;
@property(strong,nonatomic)NSArray *xunjians;
@property(strong,nonatomic)NSArray *energys;
@property(strong,nonatomic)NSArray *warnings;

@end

NS_ASSUME_NONNULL_END
