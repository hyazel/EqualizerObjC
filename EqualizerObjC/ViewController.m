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

@implementation ViewController{
    EQController *eqC;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    EQView *eqV = [[EQView alloc] initWithView:self.ivEq andDotSize:3 andDistanceBetweenDots:4 andWaveHeight:0.8 andGradient:1];
    eqC = [[EQController alloc] initWithView:eqV];
    
    [eqC clip:1];
    [eqC start];
     
}


- (IBAction)scChanged:(id)sender {
    if(self.scEq.selectedSegmentIndex==0){
        [eqC clip:0];
    }
    else if(self.scEq.selectedSegmentIndex==1){
        [eqC clip:1];
    }
    else if(self.scEq.selectedSegmentIndex==1){
        [eqC clip:2];
    }
    else if(self.scEq.selectedSegmentIndex==1){
        [eqC clip:3];
    }
    else{
        [eqC clip:4];
    }
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
