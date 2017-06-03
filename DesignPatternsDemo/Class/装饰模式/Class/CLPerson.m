//
//  CLPerson.m
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/21.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLPerson.h"

@interface CLPerson ()

@property (nonatomic, copy) NSString *name;

@end

@implementation CLPerson

- (instancetype)initWithName:(NSString *)name{
    if (self = [super init]) {
        _name = name;
    }
    return self;
}

- (void)show{
    NSLog(@"装扮的%@",_name);
}

@end
