//
//  GamePlayLogic.m
//  TicTacToe
//
//  Created by Le Duy Thanh on 13/08/2013.
//  Copyright (c) 2013 DIS. All rights reserved.
//

#import "GamePlayLogic.h"

@implementation GamePlayLogic

@synthesize isFirstPlayer = _isFirstPlayer;

- (id)init
{
    self = [super init];
    if (self) {
        _isFirstPlayer = YES;
    }
    return self;
}

-(NSString *)reciveCoordinate:(NSString *)coordinate {
    NSString *val;
    if (_isFirstPlayer) {
        val = @"X";
    } else {
        val = @"O";
    }
    _isFirstPlayer = !_isFirstPlayer;
    return val;
}

@end
