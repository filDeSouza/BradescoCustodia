//
//  Tela2.m
//  Fundos de Investimento FIDC
//
//  Created by Filipe de Souza on 23/10/14.
//  Copyright (c) 2014 Filipe de Souza. All rights reserved.
//

#import "Tela2.h"
#import "Tela3.h"

@interface Tela2 ()

@end

@implementation Tela2

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"Voltar" style:UIBarButtonItemStyleBordered target:nil action:nil];
    [self.navigationItem setBackBarButtonItem:backButton];
    
    
    if ([self.textoRecebido isEqualToString:@"BMG FIDC ABERTO CRED CONSIG RPPS"]) {
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Ata de Assembléia"},
                       @{@"Dado": @"Documento aos Cotistas"},
                       @{@"Dado": @"Regras e Procedimentos do Administrador"}];
        
    }else if ([self.textoRecebido isEqualToString:@"BMG FIDC CREDITOS CONSIGNADOS IX"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Ata de Assembléia"},
                       @{@"Dado": @"Demonstrações Financeiras"},
                       @{@"Dado": @"Regras e Procedimentos do Administrador"}];
        
    }else if ([self.textoRecebido isEqualToString:@"CHEMICAL IX - FIDC - INDÚSTRIA PETROQUÍMICA"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Ata de Assembléia"},
                       @{@"Dado": @"Relatório de Classificação de Risco"}];
        
    }else if ([self.textoRecebido isEqualToString:@"CHEMICAL VI FIDC IND PETROQUIMICA"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Demonstrações Financeiras"},
                       @{@"Dado": @"Regras e Procedimentos do Administrador"}];
        
    }else if ([self.textoRecebido isEqualToString:@"CHEMICAL VIII FIDC INDÚSTRIA PETROQUÍMICA"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Demonstrações Financeiras"},
                       @{@"Dado": @"Regras e Procedimentos do Administrador"}];
        
    }else if ([self.textoRecebido isEqualToString:@"DRIVER BRASIL TWO BANCO VOLKSWAGEN FIDC FINANCIAMENTO DE VEICULOS"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Prospecto"},
                       @{@"Dado": @"Ata de Assembléia"},
                       @{@"Dado": @"Regras e Procedimentos do Administrador"},
                       @{@"Dado": @"Relatório de Classificação de Risco"},
                       @{@"Dado": @"Relatório de Pré Venda"}];
        
    }else if ([self.textoRecebido isEqualToString:@"FIDC BARIGUI CREDITO CONSIGNADO"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Ata de Assembléia"},
                       @{@"Dado": @"Regras e Procedimentos do Administrador"}];
        
    }else if ([self.textoRecebido isEqualToString:@"FIDC BRZ FICSA AUTO"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Regras e Procedimentos do Administrador"}];
        
    }else if ([self.textoRecebido isEqualToString:@"FIDC CDC FINANC VEICULOS CREDIFIBRA"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Ata de Assembléia"},
                       @{@"Dado": @"Regras e Procedimentos do Administrador"}];
        
    }else if ([self.textoRecebido isEqualToString:@"FIDC CONSIGNADO PORTFOLIO II"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Prospecto"},
                       @{@"Dado": @"Ata de Assembléia"}];
        
    }else if ([self.textoRecebido isEqualToString:@"FIDC F A MULTISEGMENTOS"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"}];

        
    }else if ([self.textoRecebido isEqualToString:@"FIDC F BÓRIO FINANCEIRO"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Ata de Assembléia"},
                       @{@"Dado": @"Demonstrações Financeiras"},
                       @{@"Dado": @"Regras e Procedimentos do Administrador"}];
        
    }else if ([self.textoRecebido isEqualToString:@"FIDC F CÁDMIO - FINANCEIRO"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Ata de Assembléia"}];
        
    }else if ([self.textoRecebido isEqualToString:@"FIDC F III MULTISEGMENTOS"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"}];

        
    }else if ([self.textoRecebido isEqualToString:@"FIDC F VIII MULTISEGMENTOS"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"}];
        
        
    }else if ([self.textoRecebido isEqualToString:@"FIDC FICSA VEICULOS"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Ata de Assembléia"}];
        
        
    }else if ([self.textoRecebido isEqualToString:@"FIDC GM VENDA DE VEICULOS"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Ata de Assembléia"},
                       @{@"Dado": @"Demonstrações Financeiras"},
                       @{@"Dado": @"Regras e Procedimentos do Administrador"}];
        
    }else if ([self.textoRecebido isEqualToString:@"FIDC LECCA CONSIGNADO I"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Ata de Assembléia"}];
        
    }else if ([self.textoRecebido isEqualToString:@"FIDC S GOIAS S A SANEAGO INFRAEST"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Regras e Procedimentos do Administrador"}];
        
    }else if ([self.textoRecebido isEqualToString:@"FOR-TE FIDC"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Prospecto"},
                       @{@"Dado": @"Ata de Assembléia"},
                       @{@"Dado": @"Regras e Procedimentos do Administrador"}];
        
        
    }else if ([self.textoRecebido isEqualToString:@"FIDC F COBALTO - FINANCEIRO"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Ata de Assembléia"}];
        
    }else if ([self.textoRecebido isEqualToString:@"FIDC F DUBNIUM - FINANCEIRO"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Ata de Assembléia"}];
        
    }else if ([self.textoRecebido isEqualToString:@"FIDC F HÁFNIO - FINANCEIRO"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Ata de Assembléia"}];
        
    }else if ([self.textoRecebido isEqualToString:@"FIDC FORNECEDORES MMCB"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Ata de Assembléia"}];
        
    }else if ([self.textoRecebido isEqualToString:@"GAVEA CREDITO ESTRUTURADO FUNDO DE INVESTIMENTO EM COTAS DE FIDC"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Ata de Assembléia"}];
        
        
    }else if ([self.textoRecebido isEqualToString:@"JPP EMPRESAS FIDC MULTICARTEIRA"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Ata de Assembléia"},
                       @{@"Dado": @"Regras e Procedimentos do Administrador"}];
        
    }else if ([self.textoRecebido isEqualToString:@"BMG FIDC CRED CONSIG VIII"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Ata de Assembléia"},
                       @{@"Dado": @"Demonstrações Financeiras"},
                       @{@"Dado": @"Regras e Procedimentos do Administrador"}];
        
    }else if ([self.textoRecebido isEqualToString:@"BONSUCESSO FIDC CRED CONSIGNADO II"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Prospecto"}];
        
    }else if ([self.textoRecebido isEqualToString:@"CHEMICAL V FIDC IND PETROQUIMICA"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Prospecto"}];

        
    }else if ([self.textoRecebido isEqualToString:@"CHEMICAL VII - FIDC - INDUSTRIA PETROQUIMICA"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Prospecto"},
                       @{@"Dado": @"Ata de Assembléia"},
                       @{@"Dado": @"Demonstrações Financeiras"},
                       @{@"Dado": @"Regras e Procedimentos do Administrador"}];
        
    }else if ([self.textoRecebido isEqualToString:@"DRIVER BRASIL ONE BANCO VOLKSWAGEN FIDC FINANCIAMENTO DE VEÍCULOS"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Prospecto"},
                       @{@"Dado": @"Ata de Assembléia"},
                       @{@"Dado": @"Regras e Procedimentos do Administrador"}];
        
    }else if ([self.textoRecebido isEqualToString:@"FIDC AGRONEGÓCIO AQUILLA SOJA I"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"}];

        
    }else if ([self.textoRecebido isEqualToString:@"FIDC BGN – LIFE – CRÉDITO CONSIGNADO"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Prospecto"},
                       @{@"Dado": @"Demonstrações Financeiras"}];
        
    }else if ([self.textoRecebido isEqualToString:@"FIDC CDC FINANC DE VEICULOS BANIF"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Ata de Assembléia"},
                       @{@"Dado": @"Demonstrações Financeiras"},
                       @{@"Dado": @"Regras e Procedimentos do Administrador"}];
        
    }else if ([self.textoRecebido isEqualToString:@"FIDC CESP IV"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Prospecto"},
                       @{@"Dado": @"Demonstrações Financeiras"}];
        
    }else if ([self.textoRecebido isEqualToString:@"FIDC CONSIGNADOS PORTFOLIO I"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Prospecto"}];
        
    }else if ([self.textoRecebido isEqualToString:@"FIDC F ACB FINANCEIRO"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"}];

        
    }else if ([self.textoRecebido isEqualToString:@"FIDC F BP FINANCEIRO"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"}];

        
    }else if ([self.textoRecebido isEqualToString:@"FIDC F CROMO - FINANCEIRO"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Ata de Assembléia"},
                       @{@"Dado": @"Demonstrações Financeiras"},
                       @{@"Dado": @"Regras e Procedimentos do Administrador"}];
        
    }else if ([self.textoRecebido isEqualToString:@"FIDC F M MULTISEGMENTOS"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"}];

        
    }else if ([self.textoRecebido isEqualToString:@"FIDC FICSA PREMIUM VEICULOS 1"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Ata de Assembléia"},
                       @{@"Dado": @"Demonstrações Financeiras"},
                       @{@"Dado": @"Regras e Procedimentos do Administrador"}];
        
    }else if ([self.textoRecebido isEqualToString:@"FIDC FINANCEIROS CREDIPAR MAIS"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"}];

        
    }else if ([self.textoRecebido isEqualToString:@"FIDC INDÚSTRIA"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Prospecto"},
                       @{@"Dado": @"Ata de Assembléia"},
                       @{@"Dado": @"Regras e Procedimentos do Administrador"}];
        
    }else if ([self.textoRecebido isEqualToString:@"FIDC OMNI VEICULOS OMNI VEÍCULOS - IV"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Prospecto"},
                       @{@"Dado": @"Demonstrações Financeiras"}];
        
    }else if ([self.textoRecebido isEqualToString:@"FIDC SF MULTISEGMENTOS"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"}];
        
        
    }else if ([self.textoRecebido isEqualToString:@"FIDC DA SANEAMENTO DE GOIÁS - SANEAGO - INFRAESTRUTURA II"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Regras e Procedimentos do Administrador"}];
        
    }else if ([self.textoRecebido isEqualToString:@"FIDC F COPERNICIUM - FINANCEIRO"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Ata de Assembléia"}];
        
    }else if ([self.textoRecebido isEqualToString:@"FIDC F FERRO - FINANCEIRO"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Ata de Assembléia"}];
        
    }else if ([self.textoRecebido isEqualToString:@"FIDC F HÁSSIO - FINANCEIRO"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Ata de Assembléia"}];
        
    }else if ([self.textoRecebido isEqualToString:@"FIDC LOJAS RENNER II – FINANCEIRO E COMERCIAL"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Prospecto"},
                       @{@"Dado": @"Ata de Assembléia"},
                       @{@"Dado": @"Anúncio da Oferta"}];
        
    }else if ([self.textoRecebido isEqualToString:@"GÁVEA CRÉDITO ESTRUTURADO FIDC"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"},
                       @{@"Dado": @"Prospecto"},
                       @{@"Dado": @"Ata de Assembléia"}];
        
    }else if ([self.textoRecebido isEqualToString:@"TURIM CAPITAL LEASING FIDC"]){
        
        self.dados = @[@{@"Dado": @"Regulamento"}];

        
    }
    
    
    
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

    
    return self.dados.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.textLabel.text = [[self.dados objectAtIndex:indexPath.row]objectForKey:@"Dado"];
    
    cell.textLabel.numberOfLines = 2;
    
    cell.font = [UIFont systemFontOfSize:12];
    
    return cell;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    return self.textoRecebido;
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [self performSegueWithIdentifier:@"Tela3Segue" sender:self];
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqualToString:@"Tela3Segue"]) {
        
        Tela3 *proximaTela = segue.destinationViewController;
        
        NSIndexPath *indice = self.tableView.indexPathForSelectedRow;
        
        NSDictionary *selecionado = [self.dados objectAtIndex:indice.row];
        
        proximaTela.textoDado = [selecionado objectForKey:@"Dado"];
        
        NSLog(@"Numero %@", self.textoRecebido);
        
        proximaTela.textoFundo = [NSString stringWithFormat:@"%@", self.textoRecebido];
        
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
