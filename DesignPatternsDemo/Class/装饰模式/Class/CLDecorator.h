//
//  CLDecorator.h
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/21.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLPerson.h"

@interface CLDecorator : CLPerson

@property(nonatomic,strong) CLPerson *component;

- (instancetype)initWithPerson:(CLPerson *)person;

@end
