//
//  TelaRelatorios.h
//  Bradesco Custódia
//
//  Created by Filipe de Souza on 13/05/15.
//  Copyright (c) 2015 Filipe de Souza. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MLPAutoCompleteTextFieldDataSource.h"
#import "MLPAutoCompleteTextFieldDelegate.h"

@class DEMODataSource;
@class MLPAutoCompleteTextField;


@interface TelaRelatorios : UIViewController <UITextFieldDelegate, MLPAutoCompleteTextFieldDelegate>

@property (assign) BOOL testWithAutoCompleteObjectsInsteadOfStrings;
@property (weak) IBOutlet MLPAutoCompleteTextField *autocompleteTextField;



//Set this to true to prevent auto complete terms from returning instantly.
@property (assign) BOOL simulateLatency;

@end
