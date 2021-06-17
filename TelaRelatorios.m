//
//  TelaRelatorios.m
//  Bradesco Custódia
//
//  Created by Filipe de Souza on 13/05/15.
//  Copyright (c) 2015 Filipe de Souza. All rights reserved.
//

#import "TelaRelatorios.h"
#import "DEMOCustomAutoCompleteObject.h"


@interface TelaRelatorios ()

@property (strong, nonatomic) NSArray *countryObjects;

@end

@implementation TelaRelatorios

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - MLPAutoCompleteTextField DataSource


//example of asynchronous fetch:
- (void)autoCompleteTextField:(MLPAutoCompleteTextField *)textField
 possibleCompletionsForString:(NSString *)string
            completionHandler:(void (^)(NSArray *))handler
{
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0);
    dispatch_async(queue, ^{
        if(self.simulateLatency){
            CGFloat seconds = arc4random_uniform(4)+arc4random_uniform(4); //normal distribution
            NSLog(@"sleeping fetch of completions for %f", seconds);
            sleep(seconds);
        }
        
        NSArray *completions;
        if(self.testWithAutoCompleteObjectsInsteadOfStrings){
            completions = [self allCountryObjects];
        } else {
            completions = [self allCountries];
        }
        
        handler(completions);
    });
}

/*
 - (NSArray *)autoCompleteTextField:(MLPAutoCompleteTextField *)textField
 possibleCompletionsForString:(NSString *)string
 {
 
 if(self.simulateLatency){
 CGFloat seconds = arc4random_uniform(4)+arc4random_uniform(4); //normal distribution
 NSLog(@"sleeping fetch of completions for %f", seconds);
 sleep(seconds);
 }
 
 NSArray *completions;
 if(self.testWithAutoCompleteObjectsInsteadOfStrings){
 completions = [self allCountryObjects];
 } else {
 completions = [self allCountries];
 }
 
 return completions;
 }
 */

- (NSArray *)allCountryObjects
{
    if(!self.countryObjects){
        NSArray *countryNames = [self allCountries];
        NSMutableArray *mutableCountries = [NSMutableArray new];
        for(NSString *countryName in countryNames){
            DEMOCustomAutoCompleteObject *country = [[DEMOCustomAutoCompleteObject alloc] initWithCountry:countryName];
            [mutableCountries addObject:country];
        }
        
        [self setCountryObjects:[NSArray arrayWithArray:mutableCountries]];
    }
    
    return self.countryObjects;
}


- (NSArray *)allCountries
{
    NSArray *countries =
    @[
      @"000004 BRAD PRIV FIA IBOVESPA ALAVANCADO",
      @"000013 BRADESCO F.I. REFERENCIADO DI BACCARAT",
      @"000016 BRADESCO FUNDO DE INVESTIMENTO RENDA FIXA BOND",
      @"000023 FIC DE FIM CRED PRIV CATAVENTO",
      @"000038 BRADESCO F.I. CAMBIAL EURO",
      @"000045 BRADESCO F.I. MULTIMERCADO CRÉDITO PRIVADO GALILEO",
      @"000056 BRADESCO FIA IBOVESPA PLUS",
      @"000060 JAGUAR FI MULTIMERCADO CRÉDITO PRIVADO",
      @"000074 BRADESCO F.I. MULTIMERCADO CRÉDITO PRIVADO MAXIMUS",
      @"000100 BRADESCO FUNDO APOS. PROGRAMADA INDIV. FAPI FIX",
      @"000142 BRADESCO F.I. R.F. LONGO PRAZO YIELD",
      @"000143 BRADESCO F.I REFERENCIADO DI  SKY",
      @"000161 BRADESCO F.I. RENDA FIXA EMPRESA",
      @"000180 BRADESCO VIDA E PREVIDÊNCIA - LIVRE RV BASICA",
      @"000181 BRADESCO VIDA E PREVIDÊNCIA - LIVRE RF BASICA",
      @"000182 BRADESCO VIDA E PREVIDENCIA -  GESTÃO BRAM - LIVRE RV",
      @"000183 BRADESCO VIDA E PREVIDÊNCIA - LIVRE RF COML.",
      @"000185 BRADESCO VIDA E PREVIDÊNCIA - SUSEP RV BASICA",
      @"000186 BRADESCO VIDA E PREVIDÊNCIA - SUSEP RF BASICA",
      @"000187 BRADESCO VIDA E PREVIDENCIA - GESTAO BRAM - SUSEP RV",
      @"000189 BRADESCO VIDA E PREVIDÊNCIA - SUSEP RF COML.",
      @"000190 BRADESCO VIDA E PREVIDÊNCIA - RF BASICA",
      @"000191 BRADESCO VIDA E PREVIDÊNCIA - RV BASICA",
      @"000192 BRADESCO VIDA E PREVIDÊNCIA - RF COML.",
      @"000193 BRADESCO VIDA E PREVIDÊNCIA - RV TOTAL",
      @"000194 BRADESCO VIDA E PREVIDÊNCIA - RF TOTAL",
      @"000195 BRADESCO VIDA E PREVIDÊNCIA - RV COML.",
      @"000196 BRADESCO VIDA E PREVIDÊNCIA - BASICA",
      @"000197 BRADESCO VIDA E PREVIDÊNCIA - LIVRE - CONSOLIDADA",
      @"000198 BRADESCO VIDA E PREVIDÊNCIA - CONSOLIDADA - CONSOLIDADA",
      @"000199 BRADESCO VIDA E PREVIDÊNCIA - SUSEP - CONSOLIDADA",
      @"000226 FUNDEPAG-FUNDAÇAO DESP.PESQ.AGROP.",
      @"000258 PREVIP SOC DE PREV COMPLEMENTAR - PERFIL CONSERVADOR",
      @"000280 GOODYEAR PREVIDENCIA PRIVADA",
      @"000284 AVONPREV SOC DE PREV PRIV - CONSERVADORA",
      @"000291 AVONPREV SOC DE PREV PRIV - MODERADA",
      @"000292 AVONPREV SOC DE PREV PRIV - AGRESSIVA",
      @"000500 BRADESCO - F.I.C.F.I. MULT. G. PROFIT CONSERVADOR",
      @"000503 BRADESCO F.I.C.F.I. MULT. G. PROFIT MODERADO",
      @"000504 BRADESCO F.I.C.F.I. MULT. G. PROFIT DINAMICO",
      @"000508 BRADESCO F.I. MULTIMERCADO PRINCIPAL PROTEGIDO",
      @"000516 BRADESCO FIC DE FIA IBOVESPA ATIVO",
      @"000519 BRADESCO F.I. REFERENCIADO DI FEDERAL EXTRA",
      @"000527 BRAM FIM GOLDEN PROFIT",
      @"000547 BRAM F.I. REFERENCIADO DI RUBI",
      @"000550 BRADESCO PRIVATE F.I.C.F.I. REFERENCIADO  DI",
      @"000551 BRADESCO F.I. REFERENCIADO DI LONGO PRAZO CIP",
      @"000552 BRADESCO F.I.C.F.I. CAMBIAL DOLAR SPECIAL",
      @"000553 BRAM F.I. CAMBIAL DOLAR",
      @"000556 BRADESCO FIC FI  R.F. PGBL/VGBL FIX PLUS",
      @"000567 BRADESCO FIC FI REFER DI CRÉDITO PRIV GIPFEL",
      @"000574 BRADESCO PRIVATE F.I.C.F.I.  CAMBIAL DOLAR",
      @"000582 BRADESCO PRIVATE F.I.C.F.I. REFER.DI FEDERAL PLUS",
      @"000590 BRADESCO F.I.C.F.I. RENDA FIXA RENTAMAXI",
      @"000591 BRADESCO F.I.C. MULTI PGBL V25/15",
      ];
    
    return countries;
}




@end
