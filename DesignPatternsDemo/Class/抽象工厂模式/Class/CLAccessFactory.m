//
//  CLAccessFactory.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/23.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLAccessFactory.h"
#import "CLAccessUser.h"
#import "CLAccessDepartment.h"

@implementation CLAccessFactory

- (id<CLUser>)createUser{
    return [[CLAccessUser alloc] init];
}
- (id<CLDepartment>)createDepartment{
    return [[CLAccessDepartment alloc] init];
}

@end
