//
//  TelaAutorizacoes.h
//  Bradesco Custódia
//
//  Created by Filipe de Souza on 15/05/15.
//  Copyright (c) 2015 Filipe de Souza. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MLPAutoCompleteTextFieldDelegate.h"


@interface TelaAutorizacoes : UIViewController <MLPAutoCompleteTextFieldDelegate>

@property (weak, nonatomic) IBOutlet MLPAutoCompleteTextField *campoCarteira;


@end
