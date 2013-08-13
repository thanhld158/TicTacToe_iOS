//
//  KIFTestScenario+TicTacToe.m
//  TicTacToe
//
//  Created by QuangPC on 8/7/13.
//  Copyright (c) 2013 DIS. All rights reserved.
//

#import "KIFTestScenario+TicTacToe.h"
#import "KIFTestStep+TicTacToe.h"
@implementation KIFTestScenario (TicTacToe)
+ (id)scenarioStartGameThenEndGame {
    KIFTestScenario *scenario = [KIFTestScenario scenarioWithDescription:@"user start game then end game"];
    [scenario addStep:[KIFTestStep stepToReset]];
    
    
    return scenario;
}

+ (id)startGame {
    KIFTestScenario *scenario = [KIFTestScenario scenarioWithDescription:@"start game"];
    [scenario addStep:[KIFTestStep stepToWaitForViewWithAccessibilityLabel:@"StartGameView"]];
    [scenario addStep:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"XButton"]];
    [scenario addStep:[KIFTestStep stepToWaitForViewWithAccessibilityLabel:@"GamePlayView"]];
    return scenario;
}

+ (id)endGame {
    KIFTestScenario *scenario = [KIFTestScenario scenarioWithDescription:@"end game"];
    [scenario addStep:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"EndGameButton"]];
    [scenario addStep:[KIFTestStep stepToWaitForViewWithAccessibilityLabel:@"StartGameView"]];
    return scenario;
}

+ (id)stepOne {
    KIFTestScenario *scenario = [KIFTestScenario scenarioWithDescription:@"turn 1"];
    [scenario addStep:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"0:0"]];
    [scenario addStep:[KIFTestStep stepToWaitForViewWithAccessibilityLabel:@"X"]];
    return scenario;
}

+ (id)stepTwo {
    KIFTestScenario *scenario = [KIFTestScenario scenarioWithDescription:@"turn 2"];
    [scenario addStep:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"2:2"]];
    [scenario addStep:[KIFTestStep stepToWaitForViewWithAccessibilityLabel:@"O"]];
    return scenario;
}
@end
