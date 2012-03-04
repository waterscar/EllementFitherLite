//
//  VeniceViewController.m
//  EllementFitherLite
//
//  Created by Edward Xie on 12-2-25.
//  Copyright (c) 2012年 LeanDev China. All rights reserved.
//

#import "VeniceViewController.h"

@implementation VeniceViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

-(IBAction)startFight:(UIButton *)sender
{
    NSArray* attackerAttackSkills=[NSArray arrayWithObjects:[[VeniceDashSkill alloc] init],[[VeniceBasicAttackSkill alloc] init], nil];
    NSArray* defenderAttackSkill=[NSArray arrayWithObjects:[[VeniceBasicAttackSkill alloc] init], nil];
    NSArray* attackerDefenceSkills=[NSArray arrayWithObjects:[[VeniceBasicDefenceSkill alloc] init],nil];
    NSArray* defenderDefenceSkill=[NSArray arrayWithObjects:[[VeniceBlockSkill alloc] init], [[VeniceBasicDefenceSkill alloc] init], nil];
    
    
    VeniceEllement* attacker=[[VeniceEllement alloc] initWithName:@"ShaGua" AttackSkills:attackerAttackSkills DefenceSkills:attackerDefenceSkills Hp:200 Attack:60 Defence:20];
    VeniceEllement* defender=[[VeniceEllement alloc] initWithName:@"DaiZi" AttackSkills:defenderAttackSkill DefenceSkills:defenderDefenceSkill Hp:300 Attack:40 Defence:30];

    
    battle=[[VeniceFightBattle alloc] initWithAttack:attacker Defender:defender];
    
    NSMutableString* battleLog=[[NSMutableString alloc]init];
    
    while(attacker.hp>0&&defender.hp>0){
        [battleLog appendString:[battle performOneRoundFight]];
        [battleLog appendString:@"-----------------\n"];
        label.text=battleLog;
    }
}


#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
