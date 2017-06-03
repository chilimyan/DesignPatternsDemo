//
//  CLConcreateIterator.m
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/25.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLConcreateIterator.h"
#import "CLConcreteAggregate.h"

@interface CLConcreateIterator ()

@property (nonatomic, strong) CLConcreteAggregate *concreteAggreate;
@property (nonatomic, assign) NSInteger current;

@end

@implementation CLConcreateIterator

- (instancetype)initWithConcreteAggreate:(CLConcreteAggregate *)concreteAggreate{
    if (self = [super init]) {
        _current = 0;
        _concreteAggreate = concreteAggreate;
    }
    return self;
}

- (id)first{
    return [_concreteAggreate indexOfObject:0];
}

- (id)next{
    id ret = nil;
    _current ++;
    if (_current < [_concreteAggreate getCount]) {
        ret = [_concreteAggreate indexOfObject:_current];
    }
    return ret;
}

- (BOOL)isDone{
    return _current >= [_concreteAggreate getCount] ? YES : NO;
}

- (id)currentItem{
    return [_concreteAggreate indexOfObject:_current];
}


@end
