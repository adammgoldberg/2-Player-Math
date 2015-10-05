//
//  Player.h
//  2 Player Math
//
//  Created by Adam Goldberg on 2015-10-05.
//  Copyright (c) 2015 Adam Goldberg. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Player : NSObject

@property (assign, nonatomic) int numberOfLives;

-(instancetype)initWithLives:(int)lives;

-(void)loseALife;

-(NSString*)scoreToString;


@end
