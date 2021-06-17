//
//  Bebida.m
//  EdicaoTableView
//
//  Created by Sabado 8 on 04/10/14.
//  Copyright (c) 2014 Filipe de Souza. All rights reserved.
//

#import "Bebida.h"

@implementation Bebida

// Método disparado quando um objeto é arquivo
-(void)encodeWithCoder:(NSCoder *)encoder{
    
    // Definir a chave de cada propriedade
    [encoder encodeObject:self.nome forKey:@"nome"];
    
}

// Metodo disparado quando um objeto é desarquivado
-(id)initWithCoder:(NSCoder *)decoder{
    
    self = [super init];
    
    if (self) {
        
        // Adicionar na instancias do objeto os dados que estavam arquivados
        self.nome = [decoder decodeObjectForKey:@"nome"];
    }
    
    return self;
    
}


@end










