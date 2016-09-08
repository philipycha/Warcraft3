//
//  Barracks.m
//  
//
//  Created by Daniel Mathews on 2015-07-31.
//
//

#import "Barracks.h"

@implementation Barracks

- (instancetype)init
{
    _gold = 1000;
    _food = 80;
    
    
    return self;
}

- (Footman *)trainFootman{
    
    Footman *footman = [Footman new];
    
    if ([self canTrainFootman]) {
        
        self.gold -= 135;
        self.food -= 2;
        
        return footman;
    }
    
    return nil;
}

-(BOOL)canTrainFootman
{
    if (self.gold > 134 && self.food > 1) {
        return YES;
    }
    return NO;
}

- (Peasant *)trainPeasant{
    
    Peasant *peasant = [Peasant new];
    
    if ([self canTrainPeasant]) {
        
        self.gold -= 90;
        self.food -= 5;
        
        return peasant;
        
    }
    
    return nil;
}

-(BOOL)canTrainPeasant
{
    if (self.gold > 89 && self.food > 4) {
        return YES;
    }
    return NO;
}
@end
