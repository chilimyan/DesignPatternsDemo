//
//  CLTerminalExpression.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/30.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLTerminalExpression.h"
#import "CLContext.h"

@implementation CLTerminalExpression

- (void)interpret:(CLContext *)context{
    NSLog(@"终端解释器,context == %@",context.output);
}



@end
