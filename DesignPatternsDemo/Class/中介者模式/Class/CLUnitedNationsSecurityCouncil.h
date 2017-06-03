//
//  CLUnitedNationsSecurityCouncil.h
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/27.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLUnitedNations.h"

@class CLUSA;
@class CLIraq;
@interface CLUnitedNationsSecurityCouncil : CLUnitedNations

@property (nonatomic, strong)CLUSA *usa;
@property (nonatomic, strong)CLIraq *iraq;

@end
