//
//  ViewController.m
//  ViewControllerAnimations
//
//  Created by padrao on 6/1/16.
//  Copyright © 2016 Alexandre Oliveira. All rights reserved.
//

#import "ViewController.h"
#import "OpcoesController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)dissolver:(id)sender {
    [self mostrarViewComAnimacao:UIModalTransitionStyleCrossDissolve];
}

- (IBAction)virarPagina:(id)sender {
    [self mostrarViewComAnimacao:UIModalTransitionStylePartialCurl];
}

- (IBAction)subirVertical:(id)sender {
    [self mostrarViewComAnimacao:UIModalTransitionStyleCoverVertical];
}

- (IBAction)girarHorizontal:(id)sender {
    [self mostrarViewComAnimacao:UIModalTransitionStyleFlipHorizontal];
}

- (void)mostrarViewComAnimacao:(UIModalTransitionStyle) estilo {
    OpcoesController *opcoesController = [self.storyboard instantiateViewControllerWithIdentifier:@"opcoesController"];
    opcoesController.modalTransitionStyle = estilo;
    [self presentViewController:opcoesController animated:true completion:nil];
}
@end
