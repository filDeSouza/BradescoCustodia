//
//  Tela3.m
//  Fundos de Investimento FIDC
//
//  Created by Filipe de Souza on 23/10/14.
//  Copyright (c) 2014 Filipe de Souza. All rights reserved.
//

#import "Tela3.h"
#import "DejalActivityView.h"

@interface Tela3 ()

@end

@implementation Tela3

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [DejalBezelActivityView activityViewForView:self.view];
    
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"Voltar" style:UIBarButtonItemStyleBordered target:nil action:nil];
    [self.navigationItem setBackBarButtonItem:backButton];
    
    NSLog(@"textos recebidos %@   %@", self.textoFundo, self.textoDado);
    
    if ([self.textoFundo isEqualToString:@"BMG FIDC ABERTO CRED CONSIG RPPS"] && [self.textoDado isEqualToString:@"Regulamento"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/512/1/12604345000133.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"BMG FIDC ABERTO CRED CONSIG RPPS"] && [self.textoDado isEqualToString:@"Ata de Assembléia"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/512/117/AGC%20BMG%20RPPS%2003%2006%202014.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"BMG FIDC ABERTO CRED CONSIG RPPS"] && [self.textoDado isEqualToString:@"Documento aos Cotistas"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/512/125/Lista%20de%20presença_AGC%2031.07.2013_registrada.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"BMG FIDC ABERTO CRED CONSIG RPPS"] && [self.textoDado isEqualToString:@"Regras e Procedimentos do Administrador"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/512/133/12604345000133.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"BMG FIDC CREDITOS CONSIGNADOS IX"] && [self.textoDado isEqualToString:@"Regulamento"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/519/1/Regulamento%20BMG%20IX%20-ICVM%20531_%20FINAL%20LIMPA%20PARA%20REGISTRO%2022.01.2014.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"BMG FIDC CREDITOS CONSIGNADOS IX"] && [self.textoDado isEqualToString:@"Ata de Assembléia"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/519/117/AGC%20BMG%20IX%2003%2006%202014.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"BMG FIDC CREDITOS CONSIGNADOS IX"] && [self.textoDado isEqualToString:@"Demonstrações Financeiras"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/519/118/14.400.871%20BMG%20FIDC%20%20Créditos%20Consignados%20IX.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"BMG FIDC CREDITOS CONSIGNADOS IX"] && [self.textoDado isEqualToString:@"Regras e Procedimentos do Administrador"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/519/133/14400871000107.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"CHEMICAL IX - FIDC - INDÚSTRIA PETROQUÍMICA"] && [self.textoDado isEqualToString:@"Regulamento"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/1534/1/Regulamento.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"CHEMICAL IX - FIDC - INDÚSTRIA PETROQUÍMICA"] && [self.textoDado isEqualToString:@"Ata de Assembléia"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/1534/117/Instrumento%20particular.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"CHEMICAL IX - FIDC - INDÚSTRIA PETROQUÍMICA"] && [self.textoDado isEqualToString:@"Relatório de Classificação de Risco"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/1534/134/PSR_Chemical_IX_portugues.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"CHEMICAL VI FIDC IND PETROQUIMICA"] && [self.textoDado isEqualToString:@"Regulamento"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/510/1/12610493000160.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"CHEMICAL VI FIDC IND PETROQUIMICA"] && [self.textoDado isEqualToString:@"Demonstrações Financeiras"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/510/118/12.610.493%20-%20Chemical%20VI%20FIDC%20-%20Ind%20Petroqu%C3%ADmica.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"CHEMICAL VI FIDC IND PETROQUIMICA"] && [self.textoDado isEqualToString:@"Regras e Procedimentos do Administrador"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/510/133/12610493000160.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"CHEMICAL VIII FIDC INDÚSTRIA PETROQUÍMICA"] && [self.textoDado isEqualToString:@"Regulamento"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/1341/1/Chemical%20VIII%20-%20Regulamento.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"CHEMICAL VIII FIDC INDÚSTRIA PETROQUÍMICA"] && [self.textoDado isEqualToString:@"Demonstrações Financeiras"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/1341/118/18.652.979%20%20-%20Chemical%20VIII.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"CHEMICAL VIII FIDC INDÚSTRIA PETROQUÍMICA"] && [self.textoDado isEqualToString:@"Regras e Procedimentos do Administrador"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/1341/133/Regras%20e%20Procedimentos%20-%20CHEMICAL%20VIII.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"DRIVER BRASIL TWO BANCO VOLKSWAGEN FIDC FINANCIAMENTO DE VEICULOS"] && [self.textoDado isEqualToString:@"Regulamento"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/1346/1/Regulamento%20-%20274058%20-%20Registrado.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"DRIVER BRASIL TWO BANCO VOLKSWAGEN FIDC FINANCIAMENTO DE VEICULOS"] && [self.textoDado isEqualToString:@"Prospecto"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/1346/2/LINK%20PARA%20PROSPECTO%20DEFINITIVO%20DE%20DISTRIBUIÇÃO%20PÚBLICA%20DE%20COTAS%20SENIORES%20E%20COTAS%20SUBORDINADAS%20MEZANINO%20DO.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"DRIVER BRASIL TWO BANCO VOLKSWAGEN FIDC FINANCIAMENTO DE VEICULOS"] && [self.textoDado isEqualToString:@"Ata de Assembléia"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/1346/117/FIDC%20VW%20Instrumento%20de%20Quarta%20Alteração%20ao%20Regulamento%20-%20274058%20-%20Registrado.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"DRIVER BRASIL TWO BANCO VOLKSWAGEN FIDC FINANCIAMENTO DE VEICULOS"] && [self.textoDado isEqualToString:@"Regras e Procedimentos do Administrador"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/1346/133/Regras%20e%20Procedimentos%20-%20DRIVER%20BRASIL%20TWO%20FIDC.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"DRIVER BRASIL TWO BANCO VOLKSWAGEN FIDC FINANCIAMENTO DE VEICULOS"] && [self.textoDado isEqualToString:@"Relatório de Classificação de Risco"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/1346/134/Driver%20II_Presale_24oct13.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"DRIVER BRASIL TWO BANCO VOLKSWAGEN FIDC FINANCIAMENTO DE VEICULOS"] && [self.textoDado isEqualToString:@"Relatório de Pré Venda"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/1346/135/.SF345881.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"FIDC BARIGUI CREDITO CONSIGNADO"] && [self.textoDado isEqualToString:@"Regulamento"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/514/1/13525592000107.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"FIDC BARIGUI CREDITO CONSIGNADO"] && [self.textoDado isEqualToString:@"Ata de Assembléia"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/514/117/Instrumento%20Particular%20Barigui.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"FIDC BARIGUI CREDITO CONSIGNADO"] && [self.textoDado isEqualToString:@"Regras e Procedimentos do Administrador"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/514/133/13525592000107.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"FIDC BRZ FICSA AUTO"] && [self.textoDado isEqualToString:@"Regulamento"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/513/1/13031631000110.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"FIDC BRZ FICSA AUTO"] && [self.textoDado isEqualToString:@"Regras e Procedimentos do Administrador"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/513/133/13031631000110.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"FIDC CDC FINANC VEICULOS CREDIFIBRA"] && [self.textoDado isEqualToString:@"Regulamento"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/524/1/14583320000126.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"FIDC CDC FINANC VEICULOS CREDIFIBRA"] && [self.textoDado isEqualToString:@"Ata de Assembléia"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/524/117/Instrumento%20Particular%20CREDIFIBRA.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"FIDC CDC FINANC VEICULOS CREDIFIBRA"] && [self.textoDado isEqualToString:@"Regras e Procedimentos do Administrador"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/524/133/14583320000126.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"FIDC CONSIGNADO PORTFOLIO II"] && [self.textoDado isEqualToString:@"Regulamento"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/498/1/4º%20Regulamento%20FIDC%20Consignados%20Portfólio%20II%20-15.06.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"FIDC CONSIGNADO PORTFOLIO II"] && [self.textoDado isEqualToString:@"Prospecto"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/498/2/Prospecto.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"FIDC CONSIGNADO PORTFOLIO II"] && [self.textoDado isEqualToString:@"Ata de Assembléia"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/498/117/Ata%20da%20AGC%20-15.06.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"FIDC F A MULTISEGMENTOS"] && [self.textoDado isEqualToString:@"Regulamento"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/494/1/Regulamento.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"FIDC F BÓRIO FINANCEIRO"] && [self.textoDado isEqualToString:@"Regulamento"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/542/1/15835634000131.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"FIDC F BÓRIO FINANCEIRO"] && [self.textoDado isEqualToString:@"Ata de Assembléia"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/542/117/Instrumento%20Particular%20Borio.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"FIDC F BÓRIO FINANCEIRO"] && [self.textoDado isEqualToString:@"Demonstrações Financeiras"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/542/118/15.835.634%20-%20FIDC%20BORIO.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"FIDC F BÓRIO FINANCEIRO"] && [self.textoDado isEqualToString:@"Regras e Procedimentos do Administrador"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/542/133/15835634000131.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"FIDC F CÁDMIO - FINANCEIRO"] && [self.textoDado isEqualToString:@"Regulamento"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/541/1/Regulamento%20FIDC%20F%20CÁDMIO%20Financeiro%20LIMPO.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"FIDC F CÁDMIO - FINANCEIRO"] && [self.textoDado isEqualToString:@"Ata de Assembléia"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/541/117/Instrumento%20Particular%20de%20Constituição%20-%20F%20CÁDMIO.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"FIDC F III MULTISEGMENTOS"] && [self.textoDado isEqualToString:@"Regulamento"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/493/1/Regulamento.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"FIDC F VIII MULTISEGMENTOS"] && [self.textoDado isEqualToString:@"Regulamento"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/492/1/Regulamento.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"FIDC FICSA VEICULOS"] && [self.textoDado isEqualToString:@"Regulamento"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/507/1/Regulamento%20FIDC%20FICSA%20-%20AGC%2028.12.12_limpa%20para%20cartório.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"FIDC FICSA VEICULOS"] && [self.textoDado isEqualToString:@"Ata de Assembléia"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/507/117/Ata%20e%20lista%20assinadas.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"FIDC GM VENDA DE VEICULOS"] && [self.textoDado isEqualToString:@"Regulamento"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/496/1/FIDC%20GM%20%20-%20FINAL%20LIMPA%20PARA%20REGISTRO.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"FIDC GM VENDA DE VEICULOS"] && [self.textoDado isEqualToString:@"Ata de Assembléia"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/496/117/Instrumento%20Particular.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"FIDC GM VENDA DE VEICULOS"] && [self.textoDado isEqualToString:@"Demonstrações Financeiras"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/496/118/11.230.727%20-%20FIDC%20GM%20VEICULOS.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"FIDC GM VENDA DE VEICULOS"] && [self.textoDado isEqualToString:@"Regras e Procedimentos do Administrador"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/496/133/11230727000181.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"FIDC LECCA CONSIGNADO I"] && [self.textoDado isEqualToString:@"Regulamento"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/503/1/REGULAMENTO%20-%20Lecca%20-%20%20VF.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }else if ([self.textoFundo isEqualToString:@"FIDC LECCA CONSIGNADO I"] && [self.textoDado isEqualToString:@"Ata de Assembléia"]) {
        
        self.site = @"http://www.bradescobemdtvm.com.br/Upload%20Documents/Funds/503/117/ATA%20DA%20ASSEMBLEIA%20DE%2008.10.12%20-%20FIDC%20LECCA%20I.pdf";
        NSURL *urlSite = [NSURL URLWithString:self.site];
        NSURLRequest *requisicao = [NSURLRequest requestWithURL:urlSite];
        [self.manoBrowser loadRequest:requisicao];
        self.manoBrowser.scalesPageToFit = YES;
        self.manoBrowser.delegate = self;
        
    }
    
    self.timerVaiLogo = [NSTimer scheduledTimerWithTimeInterval:7.0
                                                         target:self
                                                       selector:@selector(abrir)
                                                       userInfo:nil
                                                        repeats:NO];

    

}

-(void)abrir{
    
    
    [DejalBezelActivityView removeView];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
