//
//  KIFTestStep+TicTacToe.m
//  TicTacToe
//
//  Created by QuangPC on 8/7/13.
//  Copyright (c) 2013 DIS. All rights reserved.
//

#import "KIFTestStep+TicTacToe.h"

@implementation KIFTestStep (TicTacToe)
+ (id)stepToReset
{
    return [KIFTestStep stepWithDescription:@"Reset the application state." executionBlock:^(KIFTestStep *step, NSError **error) {
        BOOL successfulReset = YES;
        
        // Do the actual reset for your app. Set successfulReset = NO if it fails.
        
        KIFTestCondition(successfulReset, error, @"Failed to reset the application.");
        
        return KIFTestStepResultSuccess;
    }];
}

+ (id)stepStartGameThenEndGame {
    
}
@end
