//
//  ViewController.m
//  2 Player Math
//
//  Created by Adam Goldberg on 2015-10-05.
//  Copyright (c) 2015 Adam Goldberg. All rights reserved.
//

#import "ViewController.h"
#import "Player.h"
#import "GameModel.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UILabel *player1Score;

@property (strong, nonatomic) IBOutlet UILabel *player2Score;

@property (strong, nonatomic) IBOutlet UILabel *playerTurnAndAdditionProblem;

@property (strong, nonatomic) IBOutlet UILabel *playerAnswer;

@property (strong, nonatomic) Player *player1;

@property (strong, nonatomic) Player *player2;

@property (strong, nonatomic) Player *currentPlayer;

@property (strong, nonatomic) GameModel *gameModel;

@property (strong, nonatomic) NSString *userInput;

@end

@implementation ViewController


-(void)displayScore {
    self.player1Score.text = [self.player1 scoreToString];
    self.player2Score.text = [self.player2 scoreToString];
    
}

-(void)generateQuestion {
    [self.gameModel displayQuestion];
    NSString *additionString = [self.gameModel randomNumbersToString];
    NSString *playerString = [[NSString alloc] init];
    if (self.currentPlayer == self.player1) {
        playerString = @"Player 1:  ";
    } else if (self.currentPlayer == self.player2) {
        playerString = @"Player 2:  ";
    }
    self.playerTurnAndAdditionProblem.text = [playerString stringByAppendingString:additionString];
    
    self.userInput = @"";
    self.playerAnswer.text = self.userInput;
    
}

-(void)endGame {
    if (self.player1.numberOfLives <= 0) {
        self.player1Score.text = @"Game over!";
    }
    if (self.player2.numberOfLives <= 0) {
        self.player2Score.text = @"Game over!";
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.player1 = [[Player alloc] initWithLives:3];
    self.player2 = [[Player alloc] initWithLives:3];
    self.currentPlayer = self.player1;
    
    
    
    
    self.gameModel = [[GameModel alloc] init];
    [self.gameModel displayQuestion];
    [self displayScore];
    [self generateQuestion];
    
   
 
    
}





- (IBAction)select0:(id)sender {
    self.userInput = [self.userInput stringByAppendingString:@"0"];
    
    self.playerAnswer.text = self.userInput;
    NSLog(@"O");
}


- (IBAction)select1:(id)sender {
    self.userInput = [self.userInput stringByAppendingString:@"1"];
    self.playerAnswer.text = self.userInput;
    
    NSLog(@"1");
}



- (IBAction)select2:(id)sender {
    self.userInput = [self.userInput stringByAppendingString:@"2"];
    self.playerAnswer.text = self.userInput;
    
    NSLog(@"2");
}


- (IBAction)select3:(id)sender {
    self.userInput = [self.userInput stringByAppendingString:@"3"];
    self.playerAnswer.text = self.userInput;
    
    
    NSLog(@"3");
}


- (IBAction)select4:(id)sender {
    self.userInput = [self.userInput stringByAppendingString:@"4"];
    self.playerAnswer.text = self.userInput;
    
    
    NSLog(@"4");
}


- (IBAction)select5:(id)sender {
    self.userInput = [self.userInput stringByAppendingString:@"5"];
    self.playerAnswer.text = self.userInput;
    
    
    NSLog(@"5");
}


- (IBAction)select6:(id)sender {
    self.userInput = [self.userInput stringByAppendingString:@"6"];
    self.playerAnswer.text = self.userInput;
    
    NSLog(@"6");
}


- (IBAction)select7:(id)sender {
    self.userInput = [self.userInput stringByAppendingString:@"7"];
    self.playerAnswer.text = self.userInput;
    
    NSLog(@"7");
}


- (IBAction)select8:(id)sender {
    self.userInput = [self.userInput stringByAppendingString:@"8"];
    self.playerAnswer.text = self.userInput;
    
    NSLog(@"8");
}


- (IBAction)select9:(id)sender {
    self.userInput = [self.userInput stringByAppendingString:@"9"];
    self.playerAnswer.text = self.userInput;
    
    NSLog(@"9");
}


- (IBAction)pressEnter:(id)sender {
    [self.gameModel calculateAnswer];
    
    if (self.gameModel.sum != [self.userInput integerValue]) {
        [self.currentPlayer loseALife];
        [self displayScore];
    }
    
    
    if (self.player1 == self.currentPlayer) {
        self.currentPlayer = self.player2;
    } else if (self.player2 == self.currentPlayer) {
        self.currentPlayer = self.player1;
    }
    
    
    [self generateQuestion];
    [self endGame];
    
   
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
