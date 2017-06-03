//
//  CLConcreteCompany.m
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/25.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLConcreteCompany.h"

@interface CLConcreteCompany ()

@property (nonatomic, strong) NSMutableArray *children;

@end

@implementation CLConcreteCompany

- (instancetype)initWithName:(NSString *)name{
    if (self = [super init]) {
        _name = name;
        _children = [NSMutableArray array];
    }
    return self;
}

- (void)add:(id<CLCompany>)company{
    [_children addObject:company];
}

- (void)remove:(id<CLCompany>)company{
    [_children removeObject:company];
}

- (void)display:(NSInteger)depth{
    NSMutableString *log = [NSMutableString stringWithFormat:@"%@",@""];
    for (int i = 0; i < depth; i ++) {
        [log appendString:@"-"];
    }
    NSLog(@"%@%@",log,_name);
    for (id<CLCompany> company in _children) {
        [company display:depth + 2];
    }
}

- (void)lineofDuty{
    for (id<CLCompany> company in _children) {
        [company lineofDuty];
    }
}

@end
