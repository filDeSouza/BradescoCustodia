//
//  TelaModal.h
//  Bradesco Custódia
//
//  Created by Filipe de Souza on 11/05/15.
//  Copyright (c) 2015 Filipe de Souza. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TelaModal : UIViewController <UITextFieldDelegate>

-(IBAction)close:(id)sender;
@property (weak, nonatomic) IBOutlet UIToolbar *toolBar;

@property (weak, nonatomic) IBOutlet UITextField *textoUsuario;
@property (weak, nonatomic) IBOutlet UITextField *textoSenha;
@property (weak, nonatomic) IBOutlet UITextField *textoFraseSecreta;

- (IBAction)entrar:(UIButton *)sender;

@property (nonatomic) int tentativasUsuario;
@property (nonatomic) int tentativasSenha;
@property (nonatomic) int tentativasFrase;

@property (weak, nonatomic) IBOutlet UIImageView *imgFundo;

@end
