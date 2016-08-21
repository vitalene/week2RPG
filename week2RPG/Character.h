//
//  Character.h
//  week2RPG
//
//  Created by Neil Vitale on 8/18/16.
//  Copyright © 2016 Neil Vitale. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Character : NSObject {
    NSString *_name;
}

- (instancetype)initWithName:(NSString *)name NS_DESIGNATED_INITIALIZER;

-(NSString *)name;

typedef enum whichAnimal {
    animalRabbit = 10,
    animalDuck = 20,
    animalFirst = animalRabbit,
    animalLast = animalDuck,
    animalNull = INT_MIN
} whichAnimal;



@end
