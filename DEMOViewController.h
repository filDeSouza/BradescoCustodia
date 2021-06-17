//
//  MLPViewController.h
//  MLPAutoCompleteDemo
//
//  Created by Eddy Borja on 1/23/13.
//  Copyright (c) 2013 Mainloop. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import "MLPAutoCompleteTextFieldDelegate.h"
#import	"TDSemiModal.h"
#import "TDDatePickerController.h"


@protocol TDDatePickerControllerDelegate;


@class DEMODataSource;
@class MLPAutoCompleteTextField;
@interface DEMOViewController : UIViewController <UITextFieldDelegate, MLPAutoCompleteTextFieldDelegate, UIPickerViewDelegate, MFMailComposeViewControllerDelegate, UIPickerViewDataSource> {
    
    IBOutlet TDDatePickerController* datePickerView;
    
    NSDate* selectedDate;
    
}

@property (strong, nonatomic) IBOutlet DEMODataSource *autocompleteDataSource;
@property (weak) IBOutlet MLPAutoCompleteTextField *autocompleteTextField;
@property (strong, nonatomic) IBOutlet UILabel *demoTitle;
@property (strong, nonatomic) IBOutlet UILabel *author;
@property (strong, nonatomic) IBOutlet UISegmentedControl *typeSwitch;

@property (weak, nonatomic) IBOutlet UITextField *campoData1;



@property (weak) id<TDDatePickerControllerDelegate> delegate;
@property (weak) IBOutlet UIDatePicker* datePicker;
@property (weak) IBOutlet UIToolbar *toolbar;

-(IBAction)saveDateEdit:(id)sender;
-(IBAction)cancelDateEdit:(id)sender;

- (IBAction)dateButtonClicked:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *btDataInicial;
@property (weak, nonatomic) IBOutlet UILabel *labelData1;

- (IBAction)dateButtonClicked2:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *btDataFinal;
@property (weak, nonatomic) IBOutlet UILabel *labelDataFinal;

@property (nonatomic) int btData;

@property (nonatomic)NSDateFormatter *dateFormatter;
@property (nonatomic)NSDate *selectedDate;

- (IBAction)btVoltar:(UIBarButtonItem *)sender;

@property (nonatomic)NSString *stringDatInicial;

- (IBAction)enviarEmail:(UIButton *)sender;

- (IBAction)gerarRelatório:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UILabel *labelRelatorio;


@property (nonatomic)NSTimer *timerVaiLogo;

@property (weak, nonatomic) IBOutlet UIButton *btEnviar;


- (IBAction)tipoDeRelatorio:(UIButton *)sender;
@property (nonatomic) NSArray *TiposRelatorio;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerTipoRelatorio;
@property (weak, nonatomic) IBOutlet UILabel *labelTipoRelatorio;
@property (nonatomic)NSString *relatorioEscolhido;











@end


@protocol TDDatePickerControllerDelegate <NSObject>

- (void)datePickerSetDate:(DEMOViewController*)viewController;
- (void)datePickerClearDate:(DEMOViewController*)viewController;
- (void)datePickerCancel:(DEMOViewController*)viewController;












