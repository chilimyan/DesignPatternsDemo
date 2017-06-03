//
//  CLObserver.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/23.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLObserver.h"
@interface CLObserver ()

@end

@implementation CLObserver

- (instancetype)initWithSubject:(CLSubject *)subject name:(NSString *)name{
    if (self = [super init]) {
        _subject = subject;
        _name = name;
    }
    return self;
}

@end
