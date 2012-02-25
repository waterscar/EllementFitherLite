//
//  VeniceSkill.h
//  EllementFitherLite
//
//  Created by Edward Xie on 12-2-25.
//  Copyright (c) 2012年 LeanDev China. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VeniceEllement.h"

@interface VeniceSkill : NSObject
{
    @private 
    int totalCoolDown;
    int currentCoolDown;
}

-(BOOL) isCoolDown;
-(void) performSkillFromAttacker:(VeniceEllement *)attacker toDefender: (VeniceEllement *) defender;
-(NSString *) description;

@property int totalCoolDown;
@property int currentCoolDown;


@end
