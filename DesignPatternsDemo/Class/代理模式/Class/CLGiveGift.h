//
//  CLGiveGift.h
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/22.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CLGiveGift <NSObject>

//送洋娃娃
- (void)giveGift;
//送鲜花
- (void)giveFlowers;
//送巧克力
- (void)giveChocolate;

@end
