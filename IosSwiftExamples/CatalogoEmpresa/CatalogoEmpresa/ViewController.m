//
//  ViewController.m
//  CatalogoEmpresa
//
//  Created by padrao on 6/1/16.
//  Copyright © 2016 Alexandre Oliveira. All rights reserved.
//

#import "ViewController.h"
#import "Empresa.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.lblMensagemSalvo.hidden = true;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)btnSalvar:(id)sender {
    Empresa *novaEmpresa = [[Empresa alloc] init];
    novaEmpresa.nome = self.txtNomeEmpresa.text;
    novaEmpresa.qtdFuncionarios = [self.txtNumFuncionarios.text intValue];
    
    if (!catalogo) {
        catalogo = [[NSMutableArray alloc] init];
    }
    
    [catalogo addObject:novaEmpresa];
    
    [UIView
        animateWithDuration:1
        animations:^{
            self.lblMensagemSalvo.hidden = false;
            self.lblMensagemSalvo.alpha = 1;
        }
        completion:^(BOOL finalizado){
            [UIView
             animateWithDuration:1
             delay:2
             options:0
             animations:^{
                 self.lblMensagemSalvo.alpha = 0;
             }
             completion:^(BOOL finalizado){
                 self.lblMensagemSalvo.hidden = true;
             }
            ];
        }
    ];
    
    // NSLog(@"Empresa criada. Nome: %@, Funcionários: %d", novaEmpresa.nome, novaEmpresa.qtdFuncionarios);
}

- (IBAction)stpContator:(id)sender {
    UIStepper *incr = (UIStepper *)sender;
    self.txtNumFuncionarios.text = [NSString stringWithFormat:@"%d", (int)incr.value];
}

- (IBAction)listarEmpresas:(id)sender {
    NSLog(@"Empresas cadastradas até o momento.");
    for (Empresa *empresa in catalogo) {
        NSLog(@"Empresa: %@ - Nº Funcionários: %d", empresa.nome, empresa.qtdFuncionarios);
    }
}
@end
