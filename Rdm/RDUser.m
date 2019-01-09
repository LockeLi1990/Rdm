//
//  RDUser.m
//  Rdm
//
//  Created by Locke Li on 2018/12/28.
//  Copyright © 2018 Locke Li. All rights reserved.
//

#import "RDUser.h"

@implementation RDUser
@synthesize companyName;
@synthesize userName;
@synthesize password;
@synthesize longitude;
@synthesize latitude;

-(void)initCompanyName:(NSString *)companyName userName:(NSString *)userName password:(NSString *)password{
    if (self==[super init]) {
        self.companyName=companyName;
        self.userName=userName;
        self.password=password;
    }
}

-(void)setLatitude:(float)latitude andLongitude:(float)longitude{
    if (self==[super init]) {
        self.latitude=latitude;
        self.longitude=longitude;
    }
}

-(NSString *)description{
    return [NSString stringWithFormat:@"<RDUser[companyName=%@, userName=%@, password=%@]>",self.companyName,self.userName,self.password];
}
@end
