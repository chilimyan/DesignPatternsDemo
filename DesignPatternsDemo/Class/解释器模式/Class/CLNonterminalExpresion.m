//
//  CLNonterminalExpresion.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/30.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLNonterminalExpresion.h"
#import "CLContext.h"

@implementation CLNonterminalExpresion

- (void)interpret:(CLContext *)context{
    NSLog(@"非终端解释器,context == %@",context.output);
}

@end
