//
//  CLUnitedNationsSecurityCouncil.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/27.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLUnitedNationsSecurityCouncil.h"
#import "CLCountry.h"
#import "CLUSA.h"
#import "CLIraq.h"

@implementation CLUnitedNationsSecurityCouncil

- (void)declareWithMessage:(NSString *)message colleague:(CLCountry *)colleague{
    if ([colleague isEqual:self.usa]) {
        [self.iraq getMessage:message];
    }else{
        [self.usa getMessage:message];
    }
}

@end
