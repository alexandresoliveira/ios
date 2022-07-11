//
//  ListarViewController.m
//  DemostracaoStoryboard
//
//  Created by padrao on 6/3/16.
//  Copyright © 2016 Alexandre Oliveira. All rights reserved.
//

#import "ListarViewController.h"
#import "DetalhesViewController.h"

@implementation ListarViewController

- (IBAction)editarCompromisso:(id)sender {
    [self performSegueWithIdentifier:@"segueListaParaEditar" sender:sender];
}

- (IBAction)detalhesCompromisso:(id)sender {
    [self performSegueWithIdentifier:@"segueListaParaDetalhes" sender:sender];
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"segueListaParaDetalhes"]) {
        DetalhesViewController *detalhesViewController = segue.destinationViewController;
        detalhesViewController.descricao = @"Opa! É 13!!!!!!!!! BRRIRRRR!!!!!!";
    }
}

@end
