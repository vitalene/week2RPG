//
//  duck.m
//  week2RPG
//
//  Created by Neil Vitale on 8/19/16.
//  Copyright © 2016 Neil Vitale. All rights reserved.
//

#import "duck.h"

@implementation duck

-(instancetype)initWithName:(NSString *)name {
    return [self initWithName:name
                   quacklevel:100
                      inWater:false];
}

-(instancetype)initWithName:(NSString *)name
                 quacklevel:(NSInteger)quack
                    inWater:(BOOL)water {
    self = [super initWithName:name];
    if (self) {
        _quack = quack;
        _water = water;
    }
    return self;
}


-(NSInteger)quack {
    return _quack;
}

-(BOOL)water {
    return _water;
}

@end
