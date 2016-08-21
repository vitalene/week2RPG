// 🌊 💧 🌾 🌿
//  main.m
//  week2RPG
//
//  Created by Neil Vitale on 8/18/16.
//  Copyright © 2016 Neil Vitale. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Character.h"
#import "duck.h"
#import "rabbit.h"

int animalChoice = -1;
int getAnimalSuccess = -1;
int nameSuccess = -1;

//char duckName[40] = {'\0'};
//NSString *duckNameStr;
//char rabbitName[40] = "Hop-along bunny";


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        NSLog(@"DUCKS VERSUS RABBITS!\n");
        
        NSLog(@"Please chose a duck or a rabbit.\n");
        while (getAnimalSuccess != 1) {
            NSLog(@"Type %d for rabbit or %d for duck: ", animalRabbit, animalDuck);
            getAnimalSuccess = scanf("%d", &animalChoice);
            
        }
        
        
        if (animalChoice == 20) {
         //   NSLog(@"Please give your duck a name:");
         //   nameSuccess = scanf("%s", &duckName[40]);
         //   printf("You chose: %s\n", &duckName[40]);
 
         //   NSLog(@"That is %@ in NSString type\n", duckNameStr);
            duck *mrQuack = [[duck alloc] initWithName:@"Mr. Quack"
                                            quacklevel:100
                                               inWater:false];
            NSLog(@"Hi, my name is %@", mrQuack);
            
        } else {
            
            rabbit *mrFluff = [[rabbit alloc] initWithName:@"Mr. Fluff"
                                                  hopMeter:100
                                                   inGrass:false];
            
            NSLog(@"Hello, my name is %@", mrFluff);
        }
        
        int multiplier = arc4random_uniform(3);
        
        NSLog(@"The random number is: %d", multiplier);
        
        NSNumber *hitScore = @(multiplier * 2);
        NSLog(@"\nThe hit score is %@\n", hitScore);
        
        
    }
    return 0;
}
