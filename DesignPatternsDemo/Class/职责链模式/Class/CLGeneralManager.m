//
//  CLGeneralManager.m
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/26.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLGeneralManager.h"
#import "CLRequest.h"

@implementation CLGeneralManager

- (instancetype)initWithName:(NSString *)name{
    if (self = [super init]) {
        self.name = name;
    }
    return self;
}

- (void)requestApplications:(CLRequest *)request{
    if (request.requestType == RequestLeaveType) {
        NSLog(@"%@:%@数量%ld 被批准",self.name,request.requestContent,request.number);
    }else if (request.requestType == RequestRaisesType && request.number <= 500){
        NSLog(@"%@:%@数量%ld 被批准",self.name,request.requestContent,request.number);
    }
    else if(request.requestType == RequestRaisesType && request.number > 500){
        NSLog(@"%@:%@数量%ld 再说吧",self.name,request.requestContent,request.number);
    }
}

@end
