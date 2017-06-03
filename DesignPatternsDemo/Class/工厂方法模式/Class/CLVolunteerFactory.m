//
//  CLVolunteerFactory.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/22.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLVolunteerFactory.h"
#import "CLVolunteer.h"

@implementation CLVolunteerFactory

//雷锋工厂
- (id<CLLeiFeng>)creatLeiFeng{
    return [[CLVolunteer alloc] init];
}

@end
