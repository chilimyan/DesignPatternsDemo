//
//  CLAmativeness.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/30.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLAmativeness.h"

@implementation CLAmativeness

- (instancetype)init{
    if (self = [super init]) {
        self.name = @"恋爱";
    }
    return self;
}

- (void)getManConclusion:(CLMan *)man{
    NSLog(@"%@%@时，凡事不懂也要装懂。",man.name,self.name);
}

- (void)getWomanConclusion:(CLWoman *)woman{
    NSLog(@"%@%@时，遇事懂也装作不懂。",woman.name,self.name);
}

@end
