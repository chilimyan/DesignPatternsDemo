//
//  CLSqlserverUser.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/23.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLSqlserverUser.h"

@implementation CLSqlserverUser


-(void)insertUser:(User *)user{
    NSLog(@"插入一个Sqlserver的User对象");
}
-(User *)getUser{
    NSLog(@"新建一个Sqlserver的User对象");
    return [[User alloc]init];
}

@end
