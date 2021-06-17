//
//  TelaModal.m
//  Bradesco Custódia
//
//  Created by Filipe de Souza on 11/05/15.
//  Copyright (c) 2015 Filipe de Souza. All rights reserved.
//

#import "TelaModal.h"

@interface TelaModal ()

@end

@implementation TelaModal

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)close:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)viewDidLoad {
    [super viewDidLoad];
    
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStyleBordered target:nil action:nil];
    [self.navigationItem setBackBarButtonItem:backButton];
    [backButton setTintColor:[UIColor whiteColor]];
    
    self.imgFundo.image = [UIImage imageNamed:@"imgFundoApp"];
    
    self.toolBar.backgroundColor = [UIColor colorWithRed:0.800 green:0.035 blue:0.184 alpha:1.000];
    
    self.view.backgroundColor = [UIColor clearColor];
    UIToolbar *blurbar = [[UIToolbar alloc] initWithFrame:self.view.frame];
    blurbar.barStyle = UIBarStyleDefault;
    [self.view addSubview:blurbar];
    [self.view sendSubviewToBack:blurbar];
    
    self.tentativasUsuario = 3;
    self.tentativasSenha = 3;
    self.tentativasFrase = 3;

    
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    [self.view endEditing:YES];
}

- (BOOL)canBecomeFirstResponder{

    return YES;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)entrar:(UIButton *)sender {
    
    
//    if (self.tentativasUsuario < 1 || self.tentativasSenha < 1 || self.tentativasFrase < 1) {
//        
//        UIAlertView *alertaBloqueio = [[UIAlertView alloc] initWithTitle:@"Aviso"
//                                                                 message:@"Acesso bloqueado!\nFavor entrar em contato com o administrativo!"
//                                                                delegate:self
//                                                       cancelButtonTitle:nil
//                                                       otherButtonTitles:@"Ok", nil];
//        
//        [alertaBloqueio show];
//        
//    }else{
//    if ([self.textoUsuario.text isEqualToString:@"bra"] && [self.textoSenha.text isEqualToString:@"123"] && [self.textoFraseSecreta.text isEqualToString:@"123"]  ) {
//        
//        [self performSegueWithIdentifier:@"vaiTela1" sender:self];
//        
//    }else if (![self.textoUsuario.text isEqualToString:@"bra"]){
//        
//        NSString *textoMsg = [NSString stringWithFormat:@"Usuário Invalido. \nTentativas Restantes %i", self.tentativasUsuario];
//        
//        UIAlertView *usuarioFailed = [[UIAlertView alloc] initWithTitle:@"Aviso"
//                                                                message:textoMsg
//                                                               delegate:self
//                                                      cancelButtonTitle:nil
//                                                      otherButtonTitles:@"Ok", nil];
//        [usuarioFailed show];
//        
//        self.tentativasUsuario = self.tentativasUsuario - 1;
//        
//    }else if (![self.textoSenha.text isEqualToString:@"123"]){
//        
//        NSString *textoMsg = [NSString stringWithFormat:@"Senha Invalida. \nTentativas Restantes %i", self.tentativasSenha];
//        
//        UIAlertView *usuarioFailed = [[UIAlertView alloc] initWithTitle:@"Aviso"
//                                                                message:textoMsg
//                                                               delegate:self
//                                                      cancelButtonTitle:nil
//                                                      otherButtonTitles:@"Ok", nil];
//        [usuarioFailed show];
//        
//        self.tentativasSenha = self.tentativasSenha - 1;
//        
//    }else if (![self.textoFraseSecreta.text isEqualToString:@"123"]){
//        
//        NSString *textoMsg = [NSString stringWithFormat:@"Frase Secreta Invalida. \nTentativas Restantes %i", self.tentativasFrase];
//        
//        UIAlertView *usuarioFailed = [[UIAlertView alloc] initWithTitle:@"Aviso"
//                                                                message:textoMsg
//                                                               delegate:self
//                                                      cancelButtonTitle:nil
//                                                      otherButtonTitles:@"Ok", nil];
//        [usuarioFailed show];
//        
//        self.tentativasFrase = self.tentativasFrase - 1;
//        
//    }
//    }
    
    // Ta aqui só pra testes
    [self performSegueWithIdentifier:@"vaiTela1" sender:self];

    
}
@end
