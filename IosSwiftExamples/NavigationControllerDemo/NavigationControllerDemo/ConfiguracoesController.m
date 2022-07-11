//
//  ConfiguracoesController.m
//  NavigationControllerDemo
//
//  Created by padrao on 6/3/16.
//  Copyright © 2016 Alexandre Oliveira. All rights reserved.
//

#import "ConfiguracoesController.h"
#import "DadosAcessoController.h"

@implementation ConfiguracoesController
- (IBAction)abrirDadosAcesso:(id)sender {
    DadosAcessoController *dadosAcessoController = [self.storyboard instantiateViewControllerWithIdentifier:@"dadosAcessoView"];
    [self.navigationController pushViewController:dadosAcessoController animated:true];
}

@end
