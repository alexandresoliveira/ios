//
//  ViewController.h
//  ProjetoTesteObjC
//
//  Created by padrao on 6/1/16.
//  Copyright © 2016 Alexandre Oliveira. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)btnEsconder:(id)sender;
- (IBAction)btnMostrar:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *vWindow;

@end

