//
//  CLSingle.m
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/26.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLSingle.h"

@implementation CLSingle

+(instancetype)sharedInstance{
    static CLSingle *singleton = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        singleton = [[CLSingle alloc]init];
    });
    return singleton;
}

@end
