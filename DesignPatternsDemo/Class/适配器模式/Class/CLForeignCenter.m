//
//  CLForeignCenter.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/24.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLForeignCenter.h"

@implementation CLForeignCenter

-(void)foreignAttact{
    NSLog(@"外籍球员%@  进攻！",self.name);
}
-(void)foreignDefent{
    NSLog(@"外籍球员%@  防守！",self.name);
}
-(instancetype)initWithName:(NSString *)name{
    if (self = [super init]) {
        _name = name;
    }
    return self;
}

@end
