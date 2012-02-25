//
//  VeniceEllement.m
//  EllementFitherLite
//
//  Created by Edward Xie on 12-2-25.
//  Copyright (c) 2012年 LeanDev China. All rights reserved.
//

#import "VeniceEllement.h"

@implementation VeniceEllement

@synthesize hp;
@synthesize attackBonus;
@synthesize defenceBonus;
@synthesize attack;
@synthesize defence;
@synthesize name;

-(id) initWithName: (NSString*)name AttackSkills: (NSArray *)anAttackSkills DefenceSkills: (NSArray *) aDefenceSkills{
    if([self init]){
        attackSkills=anAttackSkills;
        DefenceSkills=aDefenceSkills;
    }
    return self;
}

-(NSString*) description{
    return [NSString stringWithFormat:(@"Fighting ellement %s",name)];
}

@end
