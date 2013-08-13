//
//  GamePlayViewController.m
//  TicTacToe
//
//  Created by QuangPC on 8/7/13.
//  Copyright (c) 2013 DIS. All rights reserved.
//

#import "GamePlayViewController.h"
#import "GamePlayLogic.h"

@interface GamePlayViewController ()

@property (nonatomic, strong) GamePlayLogic *gameLogic;

@end

@implementation GamePlayViewController

@synthesize gameLogic = _gameLogic;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _gameLogic = [[GamePlayLogic alloc] init];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)endGame:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)tapButton:(UIButton *)sender {
    NSString *title = [_gameLogic reciveCoordinate:sender.accessibilityLabel];
    [sender setTitle:title forState:UIControlStateNormal];
}
@end
