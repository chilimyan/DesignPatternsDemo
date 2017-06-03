//
//  CLDepartment.h
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/23.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Department.h"

@protocol CLDepartment <NSObject>

- (void)insertDepartment:(Department *)department;
- (Department *)getDepartment;

@end
