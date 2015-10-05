//
//  GameModel.m
//  2 Player Math
//
//  Created by Adam Goldberg on 2015-10-05.
//  Copyright (c) 2015 Adam Goldberg. All rights reserved.
//

#import "GameModel.h"


@implementation GameModel

-(void)displayQuestion {
    self.randomNum1 = arc4random_uniform(20) + 1;
    self.randomNum2 = arc4random_uniform(20) + 1;
}



-(NSString*)randomNumbersToString {
    return [NSString stringWithFormat:@" %d + %d", self.randomNum1, self.randomNum2];
    
}



-(void)calculateAnswer {
    self.sum = self.randomNum1 + self.randomNum2;
}


@end
