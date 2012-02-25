//
//  VeniceEllement.h
//  EllementFitherLite
//
//  Created by Edward Xie on 12-2-25.
//  Copyright (c) 2012年 LeanDev China. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface VeniceEllement : NSObject
{
    int hp;
    int attack;
    int attackBonus;
    int defence;
    int defenceBonus;
    int magic;
    int magicDefnce;
    int speed;  
    NSString* name;
    NSArray *attackSkills;
    NSArray *DefenceSkills;
}

@property int hp;
@property int attackBonus;
@property int defenceBonus;
@property(readonly) int attack;
@property(readonly) int defence;
@property(readonly) NSString* name;
@end
