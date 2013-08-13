//
//  GamePlayLogicTest.m
//  TicTacToe
//

#import "Kiwi.h"
#import "GamePlayLogic.h"

SPEC_BEGIN(GamePlayLogicSpec)
describe(@"GamePlayLogic test", ^{
    it(@"-- Khi khởi tạo một thực thể mới, thuộc tính isFirstPlayer = YES", ^{
        GamePlayLogic *sut = [[GamePlayLogic alloc] init];
        [[theValue(sut.isFirstPlayer) should] equal:theValue(YES)];
    });
    
    it(@"-- Khi nhận được toạ độ tại một điểm, nếu isFirstPlayer = YES thì isFirstPlayer = NO", ^{
        GamePlayLogic *sut = [[GamePlayLogic alloc] init];
        [sut reciveCoordinate:@"0:0"];
        [[theValue(sut.isFirstPlayer) should] equal:theValue(NO)];
    });
    
    it(@"-- Khi nhận được toạ độ tại một điểm, nếu isFirstPlayer = NO thì isFirstPlayer = YES", ^{
        GamePlayLogic *sut = [[GamePlayLogic alloc] init];
        sut.isFirstPlayer = NO;
        [sut reciveCoordinate:@"0:0"];
        [[theValue(sut.isFirstPlayer) should] equal:theValue(YES)];
    });
    
    it(@"-- Khi nhận được toạ độ tại một điểm, nếu isFirstPlayer = YES thì sẽ trả về chuỗi X", ^{
        GamePlayLogic *sut = [[GamePlayLogic alloc] init];
        NSString *val = [sut reciveCoordinate:@"0:0"];
        [[val should] equal:@"X"];
    });
    
    it(@"-- Khi nhận được toạ độ tại một điểm, nếu isFirstPlayer = NO thì sẽ trả về chuỗi O", ^{
        GamePlayLogic *sut = [[GamePlayLogic alloc] init];
        sut.isFirstPlayer = NO;
        NSString *val = [sut reciveCoordinate:@"0:0"];
        [[val should] equal:@"O"];
    });
});
SPEC_END
