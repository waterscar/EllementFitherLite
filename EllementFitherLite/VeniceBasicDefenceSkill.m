//
//  VeniceBasicDefenceSkill.m
//  EllementFitherLite
//
//  Created by Edward Xie on 12-2-25.
//  Copyright (c) 2012年 LeanDev China. All rights reserved.
//

#import "VeniceBasicDefenceSkill.h"

@implementation VeniceBasicDefenceSkill
-(id) init{
    if([super init]){
        super.totalCoolDown=0;
        super.currentCoolDown=0;
        return self;
    }
    return nil;
}

-(NSString *) description{
    return @"Try to defence";
}
@end
