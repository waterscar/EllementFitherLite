//
//  VeniceFightBattle.m
//  EllementFitherLite
//
//  Created by Edward Xie on 12-2-25.
//  Copyright (c) 2012年 LeanDev China. All rights reserved.
//

#import "VeniceFightBattle.h"


@implementation VeniceFightBattle
-(id) initWithAttack: (VeniceEllement *)anAttacker Defender: (VeniceEllement *) aDefender{
    if([self init]){
        attacker=anAttacker;
        defender=aDefender;
    }
    return self;
}
-(NSString*) performOneRoundFight{
    VeniceEllement* tempEllement=attacker;
    attacker=defender;
    defender=tempEllement;
    
    VeniceSkill* attackSkill=[self getOptimizedSkills:attacker.attackSkills];
    VeniceSkill* defenceSkill=[self getOptimizedSkills:defender.defenceSkills];
    [attackSkill performSkillFromAttacker:attacker toDefender:defender];
    [defenceSkill performSkillFromAttacker:attacker toDefender:defender];
    NSMutableString* battleLog=[[NSMutableString alloc]init];
    [battleLog appendFormat:@"%@  %@,", attacker, attackSkill];
    [battleLog appendFormat:@"%@  %@\n", defender, defenceSkill];
   

    int damage=attacker.attack+attacker.attackBonus-defender.defence-defender.defenceBonus;
    if(damage<0)
        damage=0;
    
    defender.hp=defender.hp-damage;
    [battleLog appendFormat:@"attack %i+%i, defence %i+%i, damage %i, hp left %i \n",attacker.attack, attacker.attackBonus,defender.defence ,defender.defenceBonus, damage, defender.hp];
    
    [attacker clearBonus];
    [defender clearBonus];
    if(defender.hp<=0){
        [battleLog appendFormat:@"%@ win! \n", attacker];
    }
    return battleLog;
}
                              
-(VeniceSkill*) getOptimizedSkills: (NSArray*) skills{
    for(VeniceSkill* skill in skills){
        if(skill.isCoolDown){
          return skill;
      }
    }
    return nil;
}
                              

@end
