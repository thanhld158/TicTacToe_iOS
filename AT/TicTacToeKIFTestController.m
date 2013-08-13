//
//  TicTacToeKIFTestController.m
//  TicTacToe
//
//  Created by QuangPC on 8/7/13.
//  Copyright (c) 2013 DIS. All rights reserved.
//

#import "TicTacToeKIFTestController.h"
#import "KIFTestScenario+TicTacToe.h"
@implementation TicTacToeKIFTestController
- (void)initializeScenarios {
    [self startGameThenEndGame];
    [self startGameThenMove2TurnThenEndGame];
}

- (void)startGameThenEndGame {
    [self addScenario:[KIFTestScenario startGame]];
    [self addScenario:[KIFTestScenario endGame]];
}

- (void)startGameThenMove2TurnThenEndGame {
    [self addScenario:[KIFTestScenario startGame]];
    [self addScenario:[KIFTestScenario stepOne]];
    [self addScenario:[KIFTestScenario stepTwo]];
    [self addScenario:[KIFTestScenario endGame]];
}
@end
