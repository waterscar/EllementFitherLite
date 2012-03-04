//
//  VeniceViewController.h
//  EllementFitherLite
//
//  Created by Edward Xie on 12-2-25.
//  Copyright (c) 2012年 LeanDev China. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VeniceFightBattle.h"
#import "VeniceSkill.h"
#import "VeniceEllement.h"
#import "VeniceDashSkill.h"
#import "VeniceBasicAttackSkill.h"
#import "VeniceBasicDefenceSkill.h"
#import "VeniceBlockSkill.h"

@interface VeniceViewController : UIViewController
{
    IBOutlet UITextView * label;
    VeniceFightBattle* battle;
    
}

-(IBAction)startFight:(UIButton*)sender;

@end
