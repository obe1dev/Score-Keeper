//
//  SKViewController.m
//  Score Keeper
//
//  Created by Brock Oberhansley on 9/16/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "SKViewController.h"

@interface SKViewController ()

@property(strong, nonatomic) UILabel *scoreLabel;

@end

@implementation SKViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //self.view.backgroundColor = [UIColor blueColor];
    
    self.title = @"Score Keeper";
    
    //for(NSInteger i = 0; i<4; i++){
    
    UIView *scoreView = [UIView new];
    
    scoreView.frame = CGRectMake(0, 64, self.view.frame.size.width, 130);
    scoreView.backgroundColor = [UIColor whiteColor];
    
    
    UITextField * textField = [UITextField new];
    textField.frame = CGRectMake(20, 50, self.view.frame.size.width/3, 50);
    textField.backgroundColor = [UIColor whiteColor];
    textField.placeholder = @"player name";
    
    self.scoreLabel = [UILabel new];
    self.scoreLabel.frame = CGRectMake(self.view.frame.size.width/2, 50, 30, 50);
    self.scoreLabel.backgroundColor = [UIColor whiteColor];
    self.scoreLabel.text = @"0";
    
    UIStepper *stepper = [UIStepper new];
    stepper.frame = CGRectMake(200, 60, 50, 50);
    
    //calls the method updateScore
    [stepper addTarget:self action:@selector(updateScore:) forControlEvents:UIControlEventValueChanged];
    
    [scoreView addSubview:stepper];
    [scoreView addSubview:self.scoreLabel];
    [scoreView addSubview:textField];
    
    [self.view addSubview:scoreView];
        
   //}
    
}


-(void) updateScore:(UIStepper *)sender {
    NSInteger score = (NSInteger) sender.value;
    self.scoreLabel.text = [NSString stringWithFormat:@"%ld", score];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
