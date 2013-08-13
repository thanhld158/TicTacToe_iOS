//
//  StartGameViewController.m
//  TicTacToe
//
//  Created by QuangPC on 8/7/13.
//  Copyright (c) 2013 DIS. All rights reserved.
//

#import "StartGameViewController.h"
#import "GamePlayViewController.h"

@interface StartGameViewController ()

@end

@implementation StartGameViewController

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startGame:(id)sender {
    GamePlayViewController *gamePlayCon = [[GamePlayViewController alloc] initWithNibName:@"GamePlayViewController" bundle:nil];
    [self presentViewController:gamePlayCon animated:YES completion:nil];
}
@end
