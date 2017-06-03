//
//  CLCountry.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/27.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLCountry.h"

@implementation CLCountry

- (instancetype)initWith:(CLUnitedNations *)mediator{
    if (self = [super init]) {
        self.mediator = mediator;
    }
    return self;
}

@end
