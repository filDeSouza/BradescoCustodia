//
//  ClasseTableViewController.m
//  Fundos de Investimento FIDC
//
//  Created by Filipe de Souza on 21/10/14.
//  Copyright (c) 2014 Filipe de Souza. All rights reserved.
//

#import "ClasseTableViewController.h"
#import "Tela2.h"
#import "CFCoverFlowView.h"
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]


@interface ClasseTableViewController ()

@end

@implementation ClasseTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.backgroundColor = [UIColor grayColor];
    
    self.imagemLogo.image = [UIImage imageNamed:@"IMG_1228 - 2"];
    self.imagemCima.image = [UIImage imageNamed:@"IMG_1228"];
    
    self.tableView.backgroundColor = [UIColor whiteColor];
    
    [[UINavigationBar appearance] setBarTintColor:[UIColor whiteColor]];
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"Voltar" style:UIBarButtonItemStyleBordered target:nil action:nil];
    [self.navigationItem setBackBarButtonItem:backButton];
    
        
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.800 green:0.035 blue:0.184 alpha:1.000];
    
    self.navigationController.navigationBar.titleTextAttributes = @{UITextAttributeTextColor:[UIColor whiteColor]};

    
    
    self.coverFlowView1.delegate = self;
    self.coverFlowView1.pageItemWidth = 300.0;
    self.coverFlowView1.pageItemHeight = 200.0;
    self.coverFlowView1.pageItemCoverWidth = 25.0;
    self.coverFlowView1.pageItemCornerRadius = 15.0;
    self.coverFlowView1.autoAnimation = YES;
    self.coverFlowView1.animationDuration = 6.0;
    [self.coverFlowView1 setPageItemsWithImageNames:@[@"1", @"2", @"3", @"4", @"5", @"6"]];
    
    self.fundos = @[@{@"Fundo": @"BMG FIDC ABERTO CRED CONSIG RPPS"},
                    @{@"Fundo": @"BMG FIDC CREDITOS CONSIGNADOS IX"},
                    @{@"Fundo": @"CHEMICAL IX - FIDC - INDÚSTRIA PETROQUÍMICA"},
                    @{@"Fundo": @"CHEMICAL VI FIDC IND PETROQUIMICA"},
                    @{@"Fundo": @"CHEMICAL VIII FIDC INDÚSTRIA PETROQUÍMICA"},
                    @{@"Fundo": @"DRIVER BRASIL TWO BANCO VOLKSWAGEN FIDC FINANCIAMENTO DE VEICULOS"},
                    @{@"Fundo": @"FIDC BARIGUI CREDITO CONSIGNADO"},
                    @{@"Fundo": @"FIDC BRZ FICSA AUTO"},
                    @{@"Fundo": @"FIDC CDC FINANC VEICULOS CREDIFIBRA"},
                    @{@"Fundo": @"FIDC CONSIGNADO PORTFOLIO II"},
                    @{@"Fundo": @"FIDC F A MULTISEGMENTOS"},
                    @{@"Fundo": @"FIDC F BÓRIO FINANCEIRO"},
                    @{@"Fundo": @"FIDC F CÁDMIO - FINANCEIRO"},
                    @{@"Fundo": @"FIDC F III MULTISEGMENTOS"},
                    @{@"Fundo": @"FIDC F VIII MULTISEGMENTOS"},
                    @{@"Fundo": @"FIDC FICSA VEICULOS"},
                    @{@"Fundo": @"FIDC GM VENDA DE VEICULOS"},
                    @{@"Fundo": @"FIDC LECCA CONSIGNADO I"},
                    @{@"Fundo": @"FIDC S GOIAS S A SANEAGO INFRAEST"},
                    @{@"Fundo": @"FOR-TE FIDC"},
                    @{@"Fundo": @"FIDC F COBALTO - FINANCEIRO"},
                    @{@"Fundo": @"FIDC F DUBNIUM - FINANCEIRO"},
                    @{@"Fundo": @"FIDC F HÁFNIO - FINANCEIRO"},
                    @{@"Fundo": @"FIDC FORNECEDORES MMCB"},
                    @{@"Fundo": @"GAVEA CREDITO ESTRUTURADO FUNDO DE INVESTIMENTO EM COTAS DE FIDC"},
                    @{@"Fundo": @"JPP EMPRESAS FIDC MULTICARTEIRA"},
                    @{@"Fundo": @"BMG FIDC CRED CONSIG VIII"},
                    @{@"Fundo": @"BONSUCESSO FIDC CRED CONSIGNADO II"},
                    @{@"Fundo": @"CHEMICAL V FIDC IND PETROQUIMICA"},
                    @{@"Fundo": @"CHEMICAL VII - FIDC - INDUSTRIA PETROQUIMICA"},
                    @{@"Fundo": @"DRIVER BRASIL ONE BANCO VOLKSWAGEN FIDC FINANCIAMENTO DE VEÍCULOS"},
                    @{@"Fundo": @"FIDC AGRONEGÓCIO AQUILLA SOJA I"},
                    @{@"Fundo": @"FIDC BGN – LIFE – CRÉDITO CONSIGNADO"},
                    @{@"Fundo": @"FIDC CDC FINANC DE VEICULOS BANIF"},
                    @{@"Fundo": @"FIDC CESP IV"},
                    @{@"Fundo": @"FIDC CONSIGNADOS PORTFOLIO I"},
                    @{@"Fundo": @"FIDC F ACB FINANCEIRO"},
                    @{@"Fundo": @"FIDC F BP FINANCEIRO"},
                    @{@"Fundo": @"FIDC F CROMO - FINANCEIRO"},
                    @{@"Fundo": @"FIDC F M MULTISEGMENTOS"},
                    @{@"Fundo": @"FIDC FICSA PREMIUM VEICULOS 1"},
                    @{@"Fundo": @"FIDC FINANCEIROS CREDIPAR MAIS"},
                    @{@"Fundo": @"FIDC INDÚSTRIA"},
                    @{@"Fundo": @"FIDC OMNI VEICULOS OMNI VEÍCULOS - IV"},
                    @{@"Fundo": @"FIDC SF MULTISEGMENTOS"},
                    @{@"Fundo": @"FIDC DA SANEAMENTO DE GOIÁS - SANEAGO - INFRAESTRUTURA II"},
                    @{@"Fundo": @"FIDC F COPERNICIUM - FINANCEIRO"},
                    @{@"Fundo": @"FIDC F FERRO - FINANCEIRO"},
                    @{@"Fundo": @"FIDC F HÁSSIO - FINANCEIRO"},
                    @{@"Fundo": @"FIDC LOJAS RENNER II – FINANCEIRO E COMERCIAL"},
                    @{@"Fundo": @"GÁVEA CRÉDITO ESTRUTURADO FIDC"},
                    @{@"Fundo": @"TURIM CAPITAL LEASING FIDC"}];
    
                    
                    
                    
}

- (void)coverFlowView:(CFCoverFlowView *)coverFlowView didScrollPageItemToIndex:(NSInteger)index {
    NSLog(@"didScrollPageItemToIndex >>> %@", @(index));
    
    self.pageControl.currentPage = index;
}

- (void)coverFlowView:(CFCoverFlowView *)coverFlowView didSelectPageItemAtIndex:(NSInteger)index {
    NSLog(@"didSelectPageItemAtIndex >>> %@", @(index));
}

- (IBAction)pageControlAction:(UIPageControl *)sender {
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.fundos.count;
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    
    return UIStatusBarStyleLightContent;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.textLabel.text = [[self.fundos objectAtIndex:indexPath.row]objectForKey:@"Fundo"];
    
    cell.textLabel.numberOfLines = 2;
    
    cell.font = [UIFont systemFontOfSize:12];
    
    return cell;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    return @"";
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [self performSegueWithIdentifier:@"Tela2Segue" sender:self];
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqualToString:@"Tela2Segue"]) {
        
        Tela2 *proximaTela = segue.destinationViewController;
        
        NSIndexPath *indice = self.tableView.indexPathForSelectedRow;
        
        NSDictionary *selecionado = [self.fundos objectAtIndex:indice.row];
        
        proximaTela.textoRecebido = [selecionado objectForKey:@"Fundo"];
        
        NSLog(@"Numero %@", proximaTela.textoRecebido);

    }
    
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


@end
