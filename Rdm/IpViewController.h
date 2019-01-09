//
//  IpViewController.h
//  Rdm
//
//  Created by Locke Li on 2018/12/24.
//  Copyright © 2018 Locke Li. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface IpViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *url;
@property (strong, nonatomic) IBOutlet UITextField *port;

- (IBAction)submit:(id)sender;

@end

NS_ASSUME_NONNULL_END
