//
//  CLSqlserverFactory.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/23.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLSqlserverFactory.h"
#import "CLSqlserverDepartment.h"
#import "CLSqlserverUser.h"

@implementation CLSqlserverFactory

- (id<CLUser>)createUser{
    return [[CLSqlserverUser alloc] init];
}
- (id<CLDepartment>)createDepartment{
    return [[CLSqlserverDepartment alloc] init];
}

@end
