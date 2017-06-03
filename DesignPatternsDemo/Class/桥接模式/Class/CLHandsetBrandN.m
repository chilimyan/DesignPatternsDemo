//
//  CLHandsetBrandN.m
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/26.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLHandsetBrandN.h"

@interface CLHandsetBrandN ()

@property (nonatomic, weak)id<CLHandSetSoft> soft;

@end

@implementation CLHandsetBrandN

- (instancetype)initWithSoft:(id<CLHandSetSoft>)soft{
    if (self = [super init]) {
        _soft = soft;
    }
    return self;
}

- (void)run{
    [_soft run];
}

@end
