//
//  CLAccessUser.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/23.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLAccessUser.h"

@implementation CLAccessUser

-(void)insertUser:(User *)user{
    NSLog(@"插入一个Access的User对象");
}
-(User *)getUser{
    NSLog(@"新建一个Access的User对象");
    return [[User alloc]init];
}


@end
