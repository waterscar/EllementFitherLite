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
-(VeniceEllement*) performOneRoundFight{
    VeniceEllement* tempEllement=attacker;
    attacker=defender;
    defender=tempEllement;
    
    VeniceSkill* attackSkill=[attacker.getOptimizedAttackSkill];
    VeniceSkill* defenceSkill=[defender.getOptimizedDefenceSkill];
    [attackSkill performSkillFromAttacker:attacker toDefender:defender];
    [defenceSkill performSkillFromAttacker:attacker toDefender:defender];
    NSLog(@"{0} attacked: {1}",attacker,attackSkill);
    NSLog(defenceSkill);
    int damage=attacker.attack+attacker.attackBonus-defender.defence-defender.defenceBonus;
    if(damage<0)
        damage=0;
    
    defender.hp=defender.hp-damage;
    if(defender.hp<=0){
        NSLog(<#NSString *format, ...#>)
        return attacker;
    }
}
@end
