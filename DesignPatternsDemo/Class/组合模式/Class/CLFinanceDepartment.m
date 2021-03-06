//
//  CLFinanceDepartment.m
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/25.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLFinanceDepartment.h"

@implementation CLFinanceDepartment

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
    NSLog(@"%@ 公司财务收支管理",_name);
}


@end
