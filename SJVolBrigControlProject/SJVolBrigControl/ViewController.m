//
//  ViewController.m
//  SJVolBrigControl
//
//  Created by BlueDancer on 2017/12/10.
//  Copyright © 2017年 SanJiang. All rights reserved.
//

#import "ViewController.h"
#import "SJVolBrigControl.h"

@interface ViewController ()

@end

@implementation ViewController {
    SJVolBrigControl *control;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blackColor];
    
    control = [SJVolBrigControl new];
    control.brightnessView.center = self.view.center;
    [self.view addSubview:control.brightnessView];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)vol:(UISlider *)sender {
    control.volume = [sender value];
}

- (IBAction)bri:(UISlider *)sender {
    control.brightness = [sender value];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
