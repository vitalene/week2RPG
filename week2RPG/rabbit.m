//
//  rabbit.m
//  week2RPG
//
//  Created by Neil Vitale on 8/19/16.
//  Copyright © 2016 Neil Vitale. All rights reserved.
//

#import "rabbit.h"

@implementation rabbit

- (instancetype)initWithName:(NSString *)name {
    return [self initWithName:name
                     hopMeter:100
                      inGrass:false];
}

-(instancetype)initWithName:(NSString *)name
                   hopMeter:(NSInteger)hop
                    inGrass:(BOOL)grass {
    self = [super initWithName:name];
    if (self) {
        _grass = grass;
        _hop = MAX(hop,0);
    }
    return self;
}

- (NSInteger)hop {
    return _hop;
}

-(BOOL)grass {
    return _grass;
}

-(NSInteger)setHop:(NSInteger)hop {
    _hop = MAX(hop,0);
    return _hop;
}
@end
