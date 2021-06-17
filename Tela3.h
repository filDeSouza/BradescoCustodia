//
//  Tela3.h
//  Fundos de Investimento FIDC
//
//  Created by Filipe de Souza on 23/10/14.
//  Copyright (c) 2014 Filipe de Souza. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Tela3 : UIViewController <UIWebViewDelegate>

@property (nonatomic) NSString *textoFundo;
@property (nonatomic) NSString *textoDado;

@property (nonatomic) NSString *site;

@property (weak, nonatomic) IBOutlet UIWebView *manoBrowser;

@property (nonatomic) NSTimer *timerVaiLogo;

-(void)abrir;

@end
