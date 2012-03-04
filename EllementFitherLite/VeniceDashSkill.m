//
//  VeniceDashSkill.m
//  EllementFitherLite
//
//  Created by Edward Xie on 12-2-25.
//  Copyright (c) 2012年 LeanDev China. All rights reserved.
//

#import "VeniceDashSkill.h"

@implementation VeniceDashSkill
-(id) init{
    if([super init]){
        super.totalCoolDown=5;
        super.currentCoolDown=3;
        return self;
    }
    return nil;
}

-(NSString *) description{
    return @"Dash to enemy!";
}

-(void) performSkillFromAttacker:(VeniceEllement *)attacker toDefender:(VeniceEllement *)defender{    
    attacker.attackBonus+=50;
    defender.defenceBonus-=20;
    
}


@end
