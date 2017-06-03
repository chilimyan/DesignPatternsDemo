//
//  CLPlayer.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/24.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLPlayer.h"

@implementation CLPlayer

- (instancetype)initWithName:(NSString *)name{
    if (self = [super init]) {
        _name = name;
    }
    return self;
}

@end
