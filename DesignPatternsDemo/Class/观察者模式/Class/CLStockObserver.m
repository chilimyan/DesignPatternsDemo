//
//  CLStockObserver.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/23.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLStockObserver.h"
#import "CLSubject.h"

@implementation CLStockObserver

- (instancetype)initWithSubject:(CLSubject *)subject name:(NSString *)name{
    if (self = [super initWithSubject:subject name:name]) {
        
    }
    return self;
}

- (void)update{
    NSLog(@"%@", [NSString stringWithFormat:@"%@,%@关闭股票行情，继续工作!",self.subject.name,super.name]);
}

@end
