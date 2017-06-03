//
//  CLDecorator.m
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/21.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLDecorator.h"

@implementation CLDecorator

- (instancetype)initWithPerson:(CLPerson *)person{
    if (self = [super init]) {
        _component = person;
    }
    return self;
}

- (void)show{
    if (_component) {
        [_component show];
    }
}

@end
