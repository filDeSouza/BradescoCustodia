//
//  TelaInicial.h
//  Bradesco Custódia
//
//  Created by Filipe de Souza on 11/05/15.
//  Copyright (c) 2015 Filipe de Souza. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CFCoverFlowView.h"

@interface TelaInicial : UIViewController <CFCoverFlowViewDelegate>

@property (weak, nonatomic) IBOutlet CFCoverFlowView *coverFlowView1;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;
- (IBAction)pageControlAction:(UIPageControl *)sender;

@property (weak, nonatomic) IBOutlet UIImageView *imgFundo;

@property (weak, nonatomic) IBOutlet UIImageView *imgLogoBaixo;

@property (weak, nonatomic) IBOutlet UIImageView *imgFundoTela2;


- (IBAction)acesso:(UIButton *)sender;


//Botoes tela Relatorio
- (IBAction)relatorioMovimentacao:(UIButton *)sender;

- (IBAction)relatorioPosicao:(UIButton *)sender;

- (IBAction)relatorioMensal:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UIButton *btTraneferencia;

@property (weak, nonatomic) IBOutlet UIButton *btRelatorios;

@property (weak, nonatomic) IBOutlet UIButton *btAutorizacoes;


@end
