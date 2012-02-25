//
//  VeniceSkill.m
//  EllementFitherLite
//
//  Created by Edward Xie on 12-2-25.
//  Copyright (c) 2012年 LeanDev China. All rights reserved.
//

#import "VeniceSkill.h"

@implementation VeniceSkill

-(id) init{
    totalCoolDown=1;
    currentCoolDown=0;
    return self;
}

-(BOOL) isCoolDown{
    currentCoolDown=currentCoolDown-1;
    if(currentCoolDown<0)
        currentCoolDown=totalCoolDown;
    return currentCoolDown==0;
}

-(void) performSkillFromAttacker:(VeniceEllement *)attacker toDefender:(VeniceEllement *)defender{    return;
}

-(NSString *) description{
    return @"Implement this for your own";
}

@synthesize totalCoolDown;
@synthesize currentCoolDown;
@end
