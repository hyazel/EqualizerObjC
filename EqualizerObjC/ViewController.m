//
//  ViewController.m
//  EqualizerObjC
//
//  Created by Gluten on 13/12/2017.
//  Copyright © 2017 Gluten. All rights reserved.
//

#import "ViewController.h"
#import "EQController.h"
#import "EQADSRWave.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    EQView *eqV = [[EQView alloc] initWithView:self.ivEq andDotSize:6 andDistanceBetweenDots:4 andWaveHeight:0.4 andGradient:1];
    EQController *eqC = [[EQController alloc] initWithView:eqV];
    
    [eqC clip:2];
    [eqC start];
     
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
