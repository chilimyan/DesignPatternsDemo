//
//  CLBakeChickenWingCOmmand.m
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/26.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLBakeChickenWingCOmmand.h"
#import "CLBarbecuer.h"

@implementation CLBakeChickenWingCOmmand

- (void)excuteCommand{
    [self.receive bakeChickenWing];
}


@end
