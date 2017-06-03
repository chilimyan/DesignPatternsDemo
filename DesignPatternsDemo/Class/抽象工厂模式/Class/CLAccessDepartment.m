//
//  CLAccessDepartment.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/23.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLAccessDepartment.h"

@implementation CLAccessDepartment

- (void)insertDepartment:(Department *)department{
    NSLog(@"在Access中给Department表增加一条记录");
}
- (Department *)getDepartment{
    NSLog(@"在Access中得到一个Department对象");
    return [[Department alloc] init];
}


@end
