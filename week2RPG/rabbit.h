//
//  rabbit.h
//  week2RPG
//
//  Created by Neil Vitale on 8/19/16.
//  Copyright © 2016 Neil Vitale. All rights reserved.
//

#import "Character.h"

@interface rabbit : Character {
    NSInteger _hop;
    BOOL _grass;
    
}

-(instancetype)initWithName:(NSString *)name
                   hopMeter:(NSInteger)hop
                    inGrass:(BOOL)grass NS_DESIGNATED_INITIALIZER;

-(NSInteger)hop;

-(BOOL)grass;



@end
