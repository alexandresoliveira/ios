//
//  ViewController.m
//  NavigationControllerDemo
//
//  Created by padrao on 6/3/16.
//  Copyright © 2016 Alexandre Oliveira. All rights reserved.
//

#import "RootController.h"
#import "AdicionarController.h"
#import "ConfiguracoesController.h"

@interface RootController ()

@end

@implementation RootController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)abrirAdicionar:(id)sender {
    AdicionarController *adicionarController = [self.storyboard instantiateViewControllerWithIdentifier:@"adicionarControllerView"];
    [self.navigationController pushViewController:adicionarController animated:true];
}

- (IBAction)abrirConfiguracoes:(id)sender {
    ConfiguracoesController *configuracoesController = [self.storyboard instantiateViewControllerWithIdentifier:@"configuracoesControllerView"];
    [self.navigationController pushViewController:configuracoesController animated:true];
}
@end
