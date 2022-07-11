//
//  ViewController.h
//  CatalogoEmpresa
//
//  Created by padrao on 6/1/16.
//  Copyright © 2016 Alexandre Oliveira. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSMutableArray *catalogo;
}

@property (weak, nonatomic) IBOutlet UITextField *txtNomeEmpresa;
@property (weak, nonatomic) IBOutlet UITextField *txtNumFuncionarios;
@property (weak, nonatomic) IBOutlet UILabel *lblMensagemSalvo;
- (IBAction)btnSalvar:(id)sender;
- (IBAction)stpContator:(id)sender;
- (IBAction)listarEmpresas:(id)sender;

@end

