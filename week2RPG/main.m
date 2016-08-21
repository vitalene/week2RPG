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
        
        NSLog(@"Please Choose One:  \n");
        while (getAnimalSuccess != 1) {
            NSLog(@"%d: rabbit\n%d: duck: ", animalRabbit, animalDuck);
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
            int multiplier = arc4random_uniform(3) + 1;
            NSLog(@"The random number is: %d", multiplier);
            NSLog(@"The Quack Level is: %@", @(mrQuack.quack));
            NSNumber *hitScore = @(multiplier * mrQuack.quack);
            NSLog(@"\nThe hit score is %@\n", hitScore);
            int fightHere = arc4random_uniform(2) +1;
            
            switch (fightHere) {
                case 1:
                    NSLog(@"You are in the grass.");
                    NSLog(@"You see something un-ducking believable - a rabbit stealing your eggs for an easter basket.  Muscle memory from cell phone games past dance in your head as you head to confront this poor soon-to-be hasenpfeffer\n");
                    break;
                case 2:
                    
                    NSLog(@"You are in the water");
                    NSLog(@"You see a rabbit swimming straight for you.  His beady little eyes bent on revenge for the previous days events.");
                    break;
                    
                default:
                    break;
            }

            rabbit *evilCottonTail = [[rabbit alloc] initWithName:@"P. CottonTail" hopMeter:100 inGrass:false];
            
            NSLog(@"Choose a move: ");
            
            int getDuckMove = -1;
            int duckMove = 0;
            while (getDuckMove !=1) {
                NSLog(@"%d: Duck Strike\n%d: Duck Bite\n%d: Duck Splash\n", duckStrike, duckBite, duckSplash);
                getDuckMove = scanf("%d", &duckMove);
                
            }
            switch (duckMove) {
                case duckStrike:
                    NSLog(@"Duck Strike!");
                    break;
                case duckBite:
                    NSLog(@"Duck Bite!");
                    break;
                case duckSplash:
                    NSLog(@"Duck Splash!");
                    break;
                default:
                    NSLog(@"Huh?  Something weird happened");
                    break;
            }
            
            evilCottonTail.hop = [evilCottonTail setHop: 100] - arc4random_uniform(40);
            NSLog(@"Hop level is: %@", @(evilCottonTail.hop));
            
            
        } else {
            
            rabbit *mrFluff = [[rabbit alloc] initWithName:@"Mr. Fluff"
                                                  hopMeter:100
                                                   inGrass:false];
            NSLog(@"Hello, my name is %@", mrFluff);
            
        }
    }
    return 0;
}
