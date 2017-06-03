//
//  CLHandsetBrandM.m
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/26.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLHandsetBrandM.h"

@interface CLHandsetBrandM ()

@property (nonatomic, weak)id<CLHandSetSoft> soft;

@end

@implementation CLHandsetBrandM

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
