//
//  CLAdaptee.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/24.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLAdaptee.h"
#import "CLForeignCenter.h"

@interface CLAdaptee ()

@property (nonatomic, strong) CLForeignCenter *foreign;

@end

@implementation CLAdaptee

- (instancetype)initWithName:(NSString *)name{
    if (self = [super init]) {
        _foreign = [[CLForeignCenter alloc] initWithName:name];
    }
    return self;
}


- (void)attack{
    [_foreign foreignAttact];
}
- (void)defense{
    [_foreign foreignDefent];
}

@end
