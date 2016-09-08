//
//  Footman.m
//  WarCarftIII
//
//  Created by Aaron Dufall on 5/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Footman.h"

@implementation Footman

-(instancetype)init{
    
    self = [super init];
    super.healthPoints = 60;
    super.attackPower = 10;
    
    return self;
}

- (void)attack:(Unit *)enemy withDamage:(int)damage{
    
    enemy.healthPoints -= damage;
    
}


- (void)damage:(int)damage{

    self.healthPoints -= damage;
    
}

@end
