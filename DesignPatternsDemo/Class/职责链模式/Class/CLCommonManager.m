//
//  CLCommonManager.m
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/26.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLCommonManager.h"
#import "CLRequest.h"

@implementation CLCommonManager

- (instancetype)initWithName:(NSString *)name{
    if (self = [super init]) {
        self.name = name;
    }
    return self;
}

- (void)requestApplications:(CLRequest *)request{
    if (request.requestType == RequestLeaveType && request.number <= 2) {
        NSLog(@"%@:%@数量%ld 被批准",self.name,request.requestContent,request.number);
    }else{
        if (request) {
            [self.superior requestApplications:request];
        }
    }
}

@end
