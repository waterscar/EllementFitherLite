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
@synthesize attackSkills;
@synthesize defenceSkills;

-(id) initWithName: (NSString*)aName AttackSkills: (NSArray *)anAttackSkills DefenceSkills: (NSArray *) aDefenceSkills Hp:(int)aHP Attack: (int) aAttack Defence: (int) aDefence{
    if([self init]){
        attackSkills=anAttackSkills;
        defenceSkills=aDefenceSkills;
        name=aName;
        hp=aHP;
        attack=aAttack;
        defence=aDefence;
    }
    return self;
}

-(NSString*) description{
    return [NSString stringWithFormat:@"[%@]" , name];
}

-(void) clearBonus{
    attackBonus=0;
    defenceBonus=0;
}

@end
