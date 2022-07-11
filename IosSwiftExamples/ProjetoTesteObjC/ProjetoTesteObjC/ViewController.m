//
//  ViewController.m
//  ProjetoTesteObjC
//
//  Created by padrao on 6/1/16.
//  Copyright © 2016 Alexandre Oliveira. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)btnEsconder:(id)sender {
    [UIView beginAnimations:nil context:nil];
    self.vWindow.alpha = 0;
    [UIView commitAnimations];
}

- (IBAction)btnMostrar:(id)sender {
    [UIView beginAnimations:nil context:nil];
    self.vWindow.alpha = 1;
    [UIView commitAnimations];
}
@end
