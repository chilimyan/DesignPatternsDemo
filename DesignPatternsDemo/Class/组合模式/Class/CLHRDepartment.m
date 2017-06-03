//
//  CLHRDepartment.m
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/25.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLHRDepartment.h"

@implementation CLHRDepartment

- (instancetype)initWithName:(NSString *)name{
    if (self = [super init]) {
        _name = name;
    }
    return self;
}

- (void)add:(id<CLCompany>)company{
    
}

- (void)remove:(id<CLCompany>)company{
    
}

- (void)display:(NSInteger)depth{
    NSMutableString *log = [NSMutableString stringWithFormat:@"%@",@""];
    for (int i = 0; i < depth; i ++) {
        [log appendString:@"-"];
    }
    NSLog(@"%@%@",log,_name);
}

- (void)lineofDuty{
    NSLog(@"%@ 员工招聘培训管理",_name);
}

@end
