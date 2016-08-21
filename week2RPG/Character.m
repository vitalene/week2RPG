//
//  Character.m
//  week2RPG
//
//  Created by Neil Vitale on 8/18/16.
//  Copyright © 2016 Neil Vitale. All rights reserved.
//

#import "Character.h"

@implementation Character

- (instancetype)init {
    return [self initWithName:@"unnamed"];
}

- (instancetype)initWithName:(NSString *)name
                  {
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}

- (NSString *)name {
    return _name;
}

- (NSString *)description {
    return _name;
}





@end
