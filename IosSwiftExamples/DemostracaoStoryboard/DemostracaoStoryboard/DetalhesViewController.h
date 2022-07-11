//
//  DetalhesViewController.h
//  DemostracaoStoryboard
//
//  Created by padrao on 6/3/16.
//  Copyright © 2016 Alexandre Oliveira. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetalhesViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *descricaoDetalhes;
@property (nonatomic, retain) NSString *descricao;
@end
