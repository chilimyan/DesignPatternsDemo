//
//  CLObjectStructure.h
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/30.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CLVisitorPerson;
@class CLAction;

@interface CLObjectStructure : NSObject

- (void)attach:(CLVisitorPerson *)person;

- (void)detach:(CLVisitorPerson *)person;

- (void)display:(CLAction *)visitor;

@end
