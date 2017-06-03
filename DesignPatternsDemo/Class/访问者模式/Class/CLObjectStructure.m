//
//  CLObjectStructure.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/30.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLObjectStructure.h"
#import "CLVisitorPerson.h"
#import "CLAction.h"

@interface CLObjectStructure ()

@property (nonatomic, strong)NSMutableArray *list;

@end

@implementation CLObjectStructure

- (void)attach:(CLVisitorPerson *)person{
    [self.list addObject:person];
}

- (void)detach:(CLVisitorPerson *)person{
    [self.list removeObject:person];
}

- (void)display:(CLAction *)visitor{
    for (CLVisitorPerson *person in self.list) {
        [person accpet:visitor];
    }
}

- (NSMutableArray *)list{
    if (!_list) {
        _list = [NSMutableArray array];
    }
    return _list;
}

@end
