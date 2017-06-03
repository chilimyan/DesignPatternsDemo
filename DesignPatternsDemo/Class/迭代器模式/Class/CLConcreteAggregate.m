//
//  CLConcreteAggregate.m
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/25.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLConcreteAggregate.h"
#import "CLConcreateIterator.h"

@interface CLConcreteAggregate ()

@property (nonatomic, strong)NSMutableArray *items;

@end

@implementation CLConcreteAggregate

- (id<CLIterator>)createIterator{
    return [[CLConcreateIterator alloc] init];
}

- (NSInteger)getCount{
    return self.items.count;
}

- (void)addObject:(id)object{
    [self.items addObject:object];
}

- (id)indexOfObject:(NSInteger)index{
    return self.items[index];
}

- (NSMutableArray *)items{
    if (!_items) {
        _items = [NSMutableArray array];
    }
    return _items;
}

@end
