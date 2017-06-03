//
//  CLUdergraduateFactory.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/22.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLUdergraduateFactory.h"
#import "CLUdergraduate.h"

@implementation CLUdergraduateFactory

- (id<CLLeiFeng>)creatLeiFeng{
    return [[CLUdergraduate alloc] init];
}

@end
