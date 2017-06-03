//
//  CLBakeMuttonCommand.m
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/26.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLBakeMuttonCommand.h"
#import "CLBarbecuer.h"

@interface CLBakeMuttonCommand ()


@end

@implementation CLBakeMuttonCommand

- (void)excuteCommand{
    [self.receive bakeMutton];
}


@end
