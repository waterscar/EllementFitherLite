//
//  VeniceFightBattle.h
//  EllementFitherLite
//
//  Created by Edward Xie on 12-2-25.
//  Copyright (c) 2012年 LeanDev China. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VeniceEllement.h"
#import "VeniceSkill.h"

@interface VeniceFightBattle : NSObject
{
    @private
    VeniceEllement* attacker;
    VeniceEllement* defender;
}

-(id) initWithAttack: (VeniceEllement *)anAttacker Defender: (VeniceEllement *) aDefender;
-(VeniceEllement*) performOneRoundFight; 
@end
