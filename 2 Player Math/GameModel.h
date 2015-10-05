//
//  GameModel.h
//  2 Player Math
//
//  Created by Adam Goldberg on 2015-10-05.
//  Copyright (c) 2015 Adam Goldberg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameModel : NSObject

@property (nonatomic, assign) int randomNum1;

@property (nonatomic, assign) int randomNum2;

@property (nonatomic, strong) NSString *playerTurn;

@property (nonatomic, assign) int sum;

@property (assign, nonatomic) int currentPlayer;

-(void)displayQuestion;

-(void)calculateAnswer;

-(NSString*)randomNumbersToString;







@end
