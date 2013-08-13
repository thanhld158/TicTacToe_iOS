//
//  GamePlayLogic.h
//  TicTacToe
//
//  Created by Le Duy Thanh on 13/08/2013.
//  Copyright (c) 2013 DIS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GamePlayLogic : NSObject

@property (assign) BOOL isFirstPlayer;

- (NSString *)reciveCoordinate:(NSString *)coordinate;

@end
