//
//  CLAbstractExpression.h
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/30.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CLContext.h"

@interface CLAbstractExpression : NSObject

- (void)interpret:(CLContext *)context;

@end
