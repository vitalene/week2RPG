//
//  duck.h
//  week2RPG
//
//  Created by Neil Vitale on 8/19/16.
//  Copyright © 2016 Neil Vitale. All rights reserved.
//

#import "Character.h"

@interface duck : Character {
    NSInteger _quack;
    BOOL _water;
}


-(instancetype)initWithName:(NSString *)name
                 quacklevel:(NSInteger)quack
                    inWater:(BOOL)water NS_DESIGNATED_INITIALIZER;

-(NSInteger)quack;
-(BOOL)water;



@end
