//
//  CLPursuit.h
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/22.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CLGiveGift.h"
#import "CLSchoolGirl.h"

@interface CLPursuit : NSObject<CLGiveGift>

- (instancetype)initWithSchoolGirl:(CLSchoolGirl *)schoolGirl;

@end
