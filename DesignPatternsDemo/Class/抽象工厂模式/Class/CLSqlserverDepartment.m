//
//  CLSqlserverDepartment.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/23.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLSqlserverDepartment.h"

@implementation CLSqlserverDepartment

- (void)insertDepartment:(Department *)department{
    NSLog(@"在SQL Server中给Department表增加一条记录");
}
- (Department *)getDepartment{
    NSLog(@"在SQL Server中得到一个Department对象");
    return [[Department alloc] init];
}

@end
