//
//  MLPViewController.m
//  MLPAutoCompleteDemo
//
//  Created by Eddy Borja on 1/23/13.
//  Copyright (c) 2013 Mainloop. All rights reserved.
//

#import "DEMOViewController.h"
#import "MLPAutoCompleteTextField.h"
#import "DEMOCustomAutoCompleteCell.h"
#import "DEMOCustomAutoCompleteObject.h"
#import "DejalActivityView.h"
#import "TelaRelatorios.h"
#import <QuartzCore/QuartzCore.h>
#define HOME NSHomeDirectory()
#define DOCUMENTS [HOME stringByAppendingPathComponent:@"Documents"]
#define PATH_TIPORELATORIO [DOCUMENTS stringByAppendingPathComponent:@"tipoRelatorio.plist"]

@interface DEMOViewController ()<UITextFieldDelegate>


@end

@implementation DEMOViewController
{
    
    
    
    NSMutableArray *yearArray;
    NSArray *monthArray;
    NSMutableArray *DaysArray;
    NSArray *amPmArray;
    NSArray *hoursArray;
    NSMutableArray *minutesArray;
    
    NSString *currentMonthString;
    
    int selectedYearRow;
    int selectedMonthRow;
    int selectedDayRow;
    
    BOOL firstTimeLoad;
    
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.pickerTipoRelatorio.delegate = self;
    self.pickerTipoRelatorio.dataSource = self;
    
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStyleBordered target:nil action:nil];
    [self.navigationItem setBackBarButtonItem:backButton];
    [backButton setTintColor:[UIColor whiteColor]];
    
    NSDictionary *vaiProLogin = [NSDictionary dictionaryWithContentsOfFile:PATH_TIPORELATORIO];
    NSString *relatorioEscolhido = [vaiProLogin objectForKey:@"tipoRelatorio"];
    
    self.pickerTipoRelatorio.backgroundColor = [UIColor colorWithWhite:0.855 alpha:1.000];
    self.datePicker.backgroundColor = [UIColor colorWithWhite:0.855 alpha:1.000];
    self.toolbar.backgroundColor = [UIColor colorWithRed:0.745 green:0.000 blue:0.141 alpha:1.000];
    self.pickerTipoRelatorio.hidden =
    self.labelRelatorio.hidden =
    self.btEnviar.hidden = YES;
    
    if ([relatorioEscolhido isEqualToString:@"1"]) {
        
        self.navigationController.navigationBar.titleTextAttributes = @{UITextAttributeTextColor:[UIColor whiteColor]};
        self.navigationItem.title = [NSString stringWithFormat:@"Relatórios de Movimentaçao"];
        
    self.TiposRelatorio = @[@"Demonstrativo de Caixa",
                            @"Demonstrativo dos Impostos Devidos e nao Retidos",
                            @"Dividendos/Juros Aprovados",
                            @"Dividendos/Juros Recebidos",
                            @"Mapa de Evolucao de Cotas",
                            @"Movimentacao de Bloqueio de Renda Fixa",
                            @"Movimentacao de Emprestimos de Acoes",
                            @"Movimentacao de Futuros",
                            @"Movimentacao de Swap",
                            @"Operacoes com Fundos de Investimento",
                            @"Operacoes com Titulos de Renda Fixa",
                            @"Operacoes com Titulos de Renda Variável"];
    }else if ([relatorioEscolhido isEqualToString:@"2"]){
        
        self.navigationItem.title = [NSString stringWithFormat:@"Relatório de Posiçao"];

        
        self.TiposRelatorio = @[@"Carteira Diária",
                                @"Composiçao da Carteira de Fundos",
                                @"Composiçao da Carteira de Títulos",
                                @"Composiçao da Carteira de Títulos-Renda Fixa",
                                @"Composiçao da Carteira de Títulos-Renda Variável",
                                @"Distribuiçao de Carteira",
                                @"Fluxo de Caixa",
                                @"Fluxo de Caixa Projetado",
                                @"Fundos de Investimento por Categoria",
                                @"Fundos de Investimento por Vencimento",
                                @"Outros Valores",
                                @"Posiçao analítica de Renda Fixa",
                                @"Posiçao Bloqueada de Renda Fixa",
                                @"Posiçao de Empréstimos de Açoes",
                                @"Posiçao de Futuros",
                                @"Posiçao de SWAP",
                                @"Posiçao Patrimonial"];
        
    }else if ([relatorioEscolhido isEqualToString:@"3"]){
        
        self.navigationItem.title = [NSString stringWithFormat:@"Relatórios Mensais"];

        
        self.TiposRelatorio = @[@"Apropriaçao de Titulos de Renda Fixa",
                                @"Evoluçao da Carteira de Açoes - Movimentacoes do Mês",
                                @"Evoluçao da Carteira de Açoes - Posiçao do Mês Anterior",
                                @"Evoluçao da Carteira de Açoes - Posiçao do Mês Atual",
                                @"Mutaçoes Patrimoniais",
                                @"Performance Comparativa Bruta",
                                @"Performance Comparativa Líquida",
                                @"Performance da Carteira Bruta",
                                @"Performance da Carteira Líquida",
                                @"Posiçao Patrimonial Analítica",
                                @"Rentabilidade Bruta por Segmento - TIR",
                                @"Rentabilidade Líquida por Segmento - TIR",
                                @"Rentabilidade por Segmento através da TIR - Bruta",
                                @"Rentabilidade por Segmento através da TIR - Líquida"];
        
    }
    
    // Date picker
//    CGRect screenRect = [self.view frame];
//    CGSize pickerSize = [self.datePicker sizeThatFits:CGSizeZero];
//    CGRect pickerRect = CGRectMake(0.0,
//                                   screenRect.origin.y + screenRect.size.height - pickerSize.height,
//                                   pickerSize.width,
//                                   pickerSize.height);
//    self.datePicker.frame = pickerRect;
    self.toolbar.hidden =
    self.datePicker.hidden = YES;
    self.dateFormatter = [[NSDateFormatter alloc] init];
    self.datePicker.datePickerMode = UIDatePickerModeDate;
    [self.datePicker setDatePickerMode:UIDatePickerModeDate];
    //[self.datePicker setHidden:NO];
    [self.datePicker setDate:[NSDate date]];
    //[self.datePicker setMinimumDate: [NSDate date]]; //no.4
    //[self.datePicker addTarget:self action:@selector(dateChangedValue) forControlEvents:UIControlEventValueChanged]; //no.2
    
    
    
    
    //[self setSimulateLatency:YES]; //Uncomment to delay the return of autocomplete suggestions.
    //[self setTestWithAutoCompleteObjectsInsteadOfStrings:YES]; //Uncomment to return autocomplete objects instead of strings to the textfield.
    
    //[self.autocompleteDataSource setSimulateLatency:YES];
    //[self.autocompleteDataSource setTestWithAutoCompleteObjectsInsteadOfStrings:YES];
    
    // Dados Auto Complete
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDidShowWithNotification:) name:UIKeyboardDidShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDidHideWithNotification:) name:UIKeyboardDidHideNotification object:nil];
    
    [self.typeSwitch addTarget:self
                        action:@selector(typeDidChange:)
              forControlEvents:UIControlEventValueChanged];
    
    //Supported Styles:
    //[self.autocompleteTextField setBorderStyle:UITextBorderStyleBezel];
    //[self.autocompleteTextField setBorderStyle:UITextBorderStyleLine];
    //[self.autocompleteTextField setBorderStyle:UITextBorderStyleNone];
    [self.autocompleteTextField setBorderStyle:UITextBorderStyleRoundedRect];
    

    //[self.autocompleteTextField setShowAutoCompleteTableWhenEditingBegins:YES];
    //[self.autocompleteTextField setAutoCompleteTableBackgroundColor:[UIColor colorWithWhite:1 alpha:0.5]];
    
    //You can use custom TableViewCell classes and nibs in the autocomplete tableview if you wish.
    //This is only supported in iOS 6.0, in iOS 5.0 you can set a custom NIB for the cell
    if ([[[UIDevice currentDevice] systemVersion] compare:@"6.0" options:NSNumericSearch] != NSOrderedAscending) {
        [self.autocompleteTextField registerAutoCompleteCellClass:[DEMOCustomAutoCompleteCell class]
                                           forCellReuseIdentifier:@"CustomCellId"];
    }
    else{
        //Turn off bold effects on iOS 5.0 as they are not supported and will result in an exception
        self.autocompleteTextField.applyBoldEffectToAutoCompleteSuggestions = NO;
    }
    
    
    [[self.btDataInicial layer] setBorderWidth:1.0f];
    [[self.btDataInicial layer] setCornerRadius:5.0f];
    [[self.btDataInicial layer] setBorderColor:[UIColor colorWithWhite:0.146 alpha:1.000].CGColor];
    
    [[self.btDataFinal layer] setBorderWidth:1.0f];
    [[self.btDataFinal layer] setCornerRadius:5.0f];
    [[self.btDataFinal layer] setBorderColor:[UIColor colorWithWhite:0.146 alpha:1.000].CGColor];
    
}

- (void)typeDidChange:(UISegmentedControl *)sender
{
    if(sender.selectedSegmentIndex == 0){
        [self.autocompleteTextField setAutoCompleteTableAppearsAsKeyboardAccessory:NO];
    } else {
        [self.autocompleteTextField setAutoCompleteTableAppearsAsKeyboardAccessory:YES];
    }
    
}

- (void)keyboardDidShowWithNotification:(NSNotification *)aNotification
{
//    [UIView animateWithDuration:0.3
//                          delay:0
//                        options:UIViewAnimationCurveEaseOut|UIViewAnimationOptionBeginFromCurrentState
//                     animations:^{
//                         CGPoint adjust;
//                         switch (self.interfaceOrientation) {
//                             case UIInterfaceOrientationLandscapeLeft:
//                                 adjust = CGPointMake(-110, 0);
//                                 break;
//                             case UIInterfaceOrientationLandscapeRight:
//                                 adjust = CGPointMake(110, 0);
//                                 break;
//                             default:
//                                 adjust = CGPointMake(0, -60);
//                                 break;
//                         }
//                         CGPoint newCenter = CGPointMake(self.view.center.x+adjust.x, self.view.center.y+adjust.y);
//                         [self.view setCenter:newCenter];
//                         [self.author setAlpha:0];
//                         [self.demoTitle setAlpha:0];
//                         [self.typeSwitch setAlpha:0];
//                         
//                     }
//                     completion:nil];
}


- (void)keyboardDidHideWithNotification:(NSNotification *)aNotification
{
//    [UIView animateWithDuration:0.3
//                          delay:0
//                        options:UIViewAnimationCurveEaseOut|UIViewAnimationOptionBeginFromCurrentState
//                     animations:^{
//                         CGPoint adjust;
//                         switch (self.interfaceOrientation) {
//                             case UIInterfaceOrientationLandscapeLeft:
//                                 adjust = CGPointMake(110, 0);
//                                 break;
//                             case UIInterfaceOrientationLandscapeRight:
//                                 adjust = CGPointMake(-110, 0);
//                                 break;
//                             default:
//                                 adjust = CGPointMake(0, 60);
//                                 break;
//                         }
//                         CGPoint newCenter = CGPointMake(self.view.center.x+adjust.x, self.view.center.y+adjust.y);
//                         [self.view setCenter:newCenter];
//                         [self.author setAlpha:1];
//                         [self.demoTitle setAlpha:1];
//                         [self.typeSwitch setAlpha:1];
//                     }
//                     completion:nil];
    
    
    [self.autocompleteTextField setAutoCompleteTableViewHidden:NO];
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - MLPAutoCompleteTextField Delegate


- (BOOL)autoCompleteTextField:(MLPAutoCompleteTextField *)textField
          shouldConfigureCell:(UITableViewCell *)cell
       withAutoCompleteString:(NSString *)autocompleteString
         withAttributedString:(NSAttributedString *)boldedString
        forAutoCompleteObject:(id<MLPAutoCompletionObject>)autocompleteObject
            forRowAtIndexPath:(NSIndexPath *)indexPath;
{
    //This is your chance to customize an autocomplete tableview cell before it appears in the autocomplete tableview
    NSString *filename = [autocompleteString stringByAppendingString:@".png"];
    filename = [filename stringByReplacingOccurrencesOfString:@" " withString:@"-"];
    filename = [filename stringByReplacingOccurrencesOfString:@"&" withString:@"and"];
    [cell.imageView setImage:[UIImage imageNamed:filename]];
    
    return YES;
}

- (void)autoCompleteTextField:(MLPAutoCompleteTextField *)textField
    didSelectAutoCompleteString:(NSString *)selectedString
    withAutoCompleteObject:(id<MLPAutoCompletionObject>)selectedObject
    forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(selectedObject){
        NSLog(@"selected object from autocomplete menu %@ with string %@", selectedObject, [selectedObject autocompleteString]);
    } else {
        NSLog(@"selected string '%@' from autocomplete menu", selectedString);
    }
}


#pragma mark PickerView
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    return [self.TiposRelatorio count];
    
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    return [self.TiposRelatorio objectAtIndex:row];
    
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    self.relatorioEscolhido = [NSString stringWithFormat:@"%@", [self.TiposRelatorio objectAtIndex:row]];
    
}





-(BOOL)shouldAutorotate
{
    return YES;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskAll;
}

#pragma mark -
#pragma mark Actions

-(IBAction)saveDateEdit:(id)sender {

    if ([self.pickerTipoRelatorio isHidden]) {
        
    if (self.btData == 1) {
        selectedDate = self.datePicker.date;
        [self.dateFormatter setDateFormat:@"dd/MM/YYYY"]; //no.3
        self.labelData1.text = [NSString stringWithFormat:@"%@", [self.dateFormatter stringFromDate:selectedDate]]; //no.1
        self.stringDatInicial = [NSString stringWithFormat:@"%@", self.datePicker.date];

        
        [self closeDatePicker:self];
        self.toolbar.hidden =
        self.datePicker.hidden = YES;
        
    }else if (self.btData == 2){
        
        NSDateFormatter *df = [[NSDateFormatter alloc] init];
        [df setDateFormat:@"dd/MM/YYYY"];
        
        NSString *dataInicialLabel = [NSString stringWithFormat:@"%@", self.stringDatInicial];
        
        NSString *dataFinalLabel = [NSString stringWithFormat:@"%@", self.datePicker.date];

        
        NSComparisonResult resultado;
        resultado = [dataInicialLabel compare:dataFinalLabel];
        NSLog(@"Data inicial: %@", dataInicialLabel);
        NSLog(@"Data final: %@", self.datePicker.date);
        NSLog(@"Resultado data: %ld", (long)resultado);
        
        if (resultado == NSOrderedDescending) {
            
            UIAlertView *alertaData = [[UIAlertView alloc] initWithTitle:@"Aviso"
                                                                 message:@"A data final deve ser igual ou maior que a data inicial"
                                                                delegate:self
                                                       cancelButtonTitle:nil
                                                       otherButtonTitles:@"Ok", nil];
            [alertaData show];
            
        }else{
        
        
        selectedDate = self.datePicker.date;
        [self.dateFormatter setDateFormat:@"dd/MM/YYYY"]; //no.3
        self.labelDataFinal.text = [NSString stringWithFormat:@"%@", [self.dateFormatter stringFromDate:selectedDate]]; //no.1
            
            [self closeDatePicker:self];
            self.toolbar.hidden =
            self.datePicker.hidden = YES;
            
        }
    }
    }else if ([self.datePicker isHidden]){
        
        self.labelTipoRelatorio.text = [NSString stringWithFormat:@"%@", self.relatorioEscolhido];
        self.pickerTipoRelatorio.hidden = YES;
        self.toolbar.hidden = YES;
        
    }

    
}


-(IBAction)cancelDateEdit:(id)sender {
    
    [self closeDatePicker:self];
    self.toolbar.hidden =
    self.pickerTipoRelatorio.hidden =
    self.datePicker.hidden = YES;
    
}

- (IBAction)dateButtonClicked:(UIButton *)sender {
    
    self.btData = 1;
    
    self.toolbar.hidden =
    self.datePicker.hidden = NO;
    
    //[self closeDatePicker:self];
//    self.toolbar.frame=CGRectMake(0, -65, 320, 416);
//    self.datePicker.frame=CGRectMake(0, 340, 320, 416);
    
}

-(BOOL)closeDatePicker:(id)sender{
    
    [self.datePicker resignFirstResponder];
    
    return YES;
}

#pragma mark -
#pragma mark Memory Management

- (void)viewDidUnload
{
    [self setToolbar:nil];
    [super viewDidUnload];
    
    self.datePicker = nil;
    self.delegate = nil;
    
}

//- (void) dateChangedValue {
//    selectedDate = self.datePicker.date;
//    [self.dateFormatter setDateFormat:@"dd MMM YYYY"]; //no.3
//    self.labelData1.text = [NSString stringWithFormat:@"%@", [self.dateFormatter stringFromDate:selectedDate]]; //no.1
//}


- (IBAction)dateButtonClicked2:(UIButton *)sender {
    
    self.btData = 2;
    
    self.toolbar.hidden =
    self.datePicker.hidden = NO;
    
    
}
- (IBAction)btVoltar:(UIBarButtonItem *)sender {
    
    [self performSegueWithIdentifier:@"voltarMenu" sender:self];
    
}
- (IBAction)enviarEmail:(UIButton *)sender {
    
    NSString *tituloEmail = [NSString stringWithFormat:@"Relatório Bradesco Custódia"];
    NSString *corpoEmail = [NSString stringWithFormat:@"Favor nao responder este e-mail."];

    
    MFMailComposeViewController *sendmailview = [[MFMailComposeViewController alloc] init];
    sendmailview.mailComposeDelegate = self;
    [sendmailview setSubject:tituloEmail];
    [sendmailview setMessageBody:corpoEmail isHTML:NO];
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory,
                                                         NSUserDomainMask,
                                                         YES);
    
    NSString *documentDirectory = [paths objectAtIndex:0];
    
    NSString *file = [documentDirectory stringByAppendingFormat:@"Relatorio.pdf"];
    
    NSData *data = [NSData dataWithContentsOfFile:file];
    
    [sendmailview addAttachmentData:data mimeType:@"application/pdf" fileName:@"relaorio.pdf"];
    
    [self presentViewController:sendmailview animated:YES completion:nil];
    
}

- (IBAction)tipoDeRelatorio:(UIButton *)sender {
    
    
    self.pickerTipoRelatorio.hidden=
    self.toolbar.hidden = NO;
    
}

- (IBAction)gerarRelatório:(UIButton *)sender {
    
    if(self.autocompleteTextField.text.length == 0){
        
        UIAlertView *alertaData = [[UIAlertView alloc] initWithTitle:@"Aviso"
                                                             message:@"Favor preencher o campo Carteira"
                                                            delegate:self
                                                   cancelButtonTitle:nil
                                                   otherButtonTitles:@"Ok", nil];
        [alertaData show];
        
    }else if ([self.labelData1.text isEqualToString:@"Data Inicial"]){
        
        UIAlertView *alertaData = [[UIAlertView alloc] initWithTitle:@"Aviso"
                                                             message:@"Favor selecionar a Data Inicial"
                                                            delegate:self
                                                   cancelButtonTitle:nil
                                                   otherButtonTitles:@"Ok", nil];
        [alertaData show];
        
    }else if ([self.labelDataFinal.text isEqualToString:@"Data Inicial"]){
        
        UIAlertView *alertaData = [[UIAlertView alloc] initWithTitle:@"Aviso"
                                                             message:@"Favor selecionar a Data Final"
                                                            delegate:self
                                                   cancelButtonTitle:nil
                                                   otherButtonTitles:@"Ok", nil];
        [alertaData show];
        
    }else if ([self.labelTipoRelatorio.text isEqualToString:@"Tipo de Relatório"]){
        
        UIAlertView *alertaData = [[UIAlertView alloc] initWithTitle:@"Aviso"
                                                             message:@"Favor selecionar o Tipo do Relatório"
                                                            delegate:self
                                                   cancelButtonTitle:nil
                                                   otherButtonTitles:@"Ok", nil];
        [alertaData show];
        
    }else{
    
    [DejalBezelActivityView activityViewForView:self.view];
    
    self.timerVaiLogo = [NSTimer scheduledTimerWithTimeInterval:3.0
                                                         target:self
                                                       selector:@selector(abrir)
                                                       userInfo:nil
                                                        repeats:NO];
    }
}

-(void)abrir{
    
    self.btEnviar.hidden =
    self.labelRelatorio.hidden = NO;
    [DejalActivityView removeView];
    self.labelRelatorio.text = [NSString stringWithFormat:@"%@.pdf", self.autocompleteTextField.text];
    
}

-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{
    
    switch (result) {
        case MFMailComposeResultCancelled:
            NSLog(@"Email cancelado");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Email salvo");
            break;
        case MFMailComposeResultSent:
            NSLog(@"Email enviado");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Falha no envio: %@", [error localizedDescription]);
            break;
        default:
            break;
    }
    
    [self dismissViewControllerAnimated:YES completion:NULL];
    
}


@end



























