//
//  Player.m
//  2 Player Math
//
//  Created by Adam Goldberg on 2015-10-05.
//  Copyright (c) 2015 Adam Goldberg. All rights reserved.
//

#import "Player.h"
#import "GameModel.h"

@implementation Player


- (instancetype)initWithLives:(int)lives
{
    self = [super init];
    if (self) {
        self.numberOfLives = lives;
    }
    return self;
}

-(void)loseALife {
        self.numberOfLives = self.numberOfLives - 1;
}




-(NSString*)scoreToString {
    return [NSString stringWithFormat:@"Player Score:  %d", self.numberOfLives];
}



@end
