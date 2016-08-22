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
        
        NSLog(@"🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇");
        NSLog(@"DUCKS VERSUS RABBITS!\n");
        NSLog(@"🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇🐇");
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
            rabbit *evilCottonTail = [[rabbit alloc] initWithName:@"P. CottonTail" hopMeter:100 inGrass:false];
            //////////////////////////////////////////////////
            NSLog(@"Hi, my name is %@", mrQuack);
            NSLog(@"The Quack Level is: %@", @(mrQuack.quack));
            int fightHere = arc4random_uniform(2) +1;
            
            switch (fightHere) {
                case 1:
                    [evilCottonTail setGrass:true];
                    [mrQuack setWater:false];
                    NSLog(@"🌾🌾🌾🌾🌾🌾🌾🌾🌾🌾🌾🌾🌾");
                    NSLog(@"You are in the grass.");
                    NSLog(@"🌾🌾🌾🌾🌾🌾🌾🌾🌾🌾🌾🌾🌾");
                    NSLog(@"You see something un-ducking believable - a rabbit stealing your eggs for an easter basket.  Muscle memory from cell phone games past dance in your head as you head to confront this poor soon-to-be hasenpfeffer\n");
                    break;
                case 2:
                    [evilCottonTail setGrass:false];
                    [mrQuack setWater:true];
                    NSLog(@"💧💧💧💧💧💧💧💧💧💧💧💧");
                    NSLog(@"You are in the water");
                    NSLog(@"💧💧💧💧💧💧💧💧💧💧💧💧");
                    NSLog(@"🏊You see a rabbit swimming straight for you.  His beady little eyes are fixed in hate.  Get ready to fight!🏊");
                    [mrQuack setQuack:150];
                    NSLog(@"You have 50%% more quack in the water.  Your quack level is %@", @(mrQuack.quack));
                    break;
                    
                default:
                    break;
            }
            
            
            while (mrQuack.quack > 0) {
                
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
                        evilCottonTail.hop = [evilCottonTail setHop: evilCottonTail.hop] - arc4random_uniform(40);
                        mrQuack.quack = [mrQuack setQuack:mrQuack.quack] - arc4random_uniform(40);
                        NSLog(@"The Rabbit's Hop level is: %@", @(evilCottonTail.hop));
                        NSLog(@"Your Quack Level is: %@", @(mrQuack.quack));
                        break;
                    case duckBite:
                        NSLog(@"Duck Bite!");
                        evilCottonTail.hop = [evilCottonTail setHop: evilCottonTail.hop] - arc4random_uniform(20);
                        mrQuack.quack = [mrQuack setQuack:mrQuack.quack] - arc4random_uniform(20);
                        NSLog(@"The Rabbit's Hop level is: %@", @(evilCottonTail.hop));
                        NSLog(@"Your Quack Level is: %@", @(mrQuack.quack));
                        break;
                    case duckSplash:
                        NSLog(@"Duck Splash!");
                        evilCottonTail.hop = [evilCottonTail setHop: evilCottonTail.hop] - arc4random_uniform(10);
                        mrQuack.quack = [mrQuack setQuack:mrQuack.quack] - arc4random_uniform(10);
                        NSLog(@"The Rabbit's Hop level is: %@", @(evilCottonTail.hop));
                        NSLog(@"Your Quack Level is: %@", @(mrQuack.quack));
                        
                        break;
                    default:
                        NSLog(@"Huh?  Something weird happened");
                        break;
                        
                }
                
                if (evilCottonTail.hop == 0) {
                    NSLog(@"The duck won!!!");
                    return 0;
                }
            }
            
            
            
        } else {
            
            rabbit *mrFluff = [[rabbit alloc] initWithName:@"Mr. Fluff"
                                                  hopMeter:100
                                                   inGrass:false];
            NSLog(@"Hello, my name is %@", mrFluff);
            
        }
    }
    return 0;
}
