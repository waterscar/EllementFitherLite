//
//  VeniceBlockSkill.m
//  EllementFitherLite
//
//  Created by Edward Xie on 12-2-25.
//  Copyright (c) 2012年 LeanDev China. All rights reserved.
//

#import "VeniceBlockSkill.h"

@implementation VeniceBlockSkill
-(id) init{
    if([super init]){
        super.totalCoolDown=3;
        super.currentCoolDown=1;
        return self;
    }
    return nil;
}

-(NSString *) description{
    return @"Pull up shield and try to block";
}

-(void) performSkillFromAttacker:(VeniceEllement *)attacker toDefender:(VeniceEllement *)defender{    
    defender.defenceBonus+=50;
}

@end
