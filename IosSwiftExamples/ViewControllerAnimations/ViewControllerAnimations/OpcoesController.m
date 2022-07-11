//
//  OpcoesController.m
//  ViewControllerAnimations
//
//  Created by padrao on 6/1/16.
//  Copyright © 2016 Alexandre Oliveira. All rights reserved.
//

#import "OpcoesController.h"

@interface OpcoesController ()

@end

@implementation OpcoesController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)acVoltar:(id)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}

@end
