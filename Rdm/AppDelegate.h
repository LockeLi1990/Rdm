//
//  AppDelegate.h
//  Rdm
//
//  Created by Locke Li on 2018/12/7.
//  Copyright © 2018 Locke Li. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

