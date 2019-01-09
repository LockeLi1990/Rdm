//
//  RDUser.h
//  Rdm
//
//  Created by Locke Li on 2018/12/28.
//  Copyright © 2018 Locke Li. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RDUser : NSObject
@property(nonatomic) NSString* companyName;
@property(nonatomic)NSString* userName;
@property(nonatomic)NSString*password;
@property(nonatomic)float latitude;
@property(nonatomic)float longitude;

-(void)initCompanyName:(NSString*)companyName userName:(NSString*)userName password:(NSString*)password;
-(void)setLatitude:(float)latitude andLongitude:(float)longitude;
@end

NS_ASSUME_NONNULL_END
