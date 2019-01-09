//
//  IconCollectionViewCell.h
//  Rdm
//
//  Created by Locke Li on 2018/12/25.
//  Copyright © 2018 Locke Li. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface IconCollectionViewCell : UICollectionViewCell
@property (strong, nonatomic) IBOutlet UIImageView *iconImage;
@property (strong, nonatomic) IBOutlet UILabel *iconLabel;

@end

NS_ASSUME_NONNULL_END
