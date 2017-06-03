//
//  CLPersonDirector.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/23.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLPersonDirector.h"

@interface CLPersonDirector ()

@property (nonatomic, weak) id <CLPersonBuild> personBuilder;

@end

@implementation CLPersonDirector

- (instancetype)initWithPersonBuild:(id<CLPersonBuild>)builder{
    if (self = [super init]) {
        _personBuilder = builder;
    }
    return self;
}

- (void)buildPerson{
    [_personBuilder buildHead];
    [_personBuilder buildBody];
    [_personBuilder buildArmLeft];
    [_personBuilder buildArmRight];
    [_personBuilder buildLegLeft];
    [_personBuilder buildLegRight];
    
}

@end
