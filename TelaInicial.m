//
//  TelaInicial.m
//  Bradesco Custódia
//
//  Created by Filipe de Souza on 11/05/15.
//  Copyright (c) 2015 Filipe de Souza. All rights reserved.
//

#import "TelaInicial.h"
#import "CFCoverFlowView.h"
#import "ZFModalTransitionAnimator.h"
#import "TelaModal.h"
#define HOME NSHomeDirectory()
#define DOCUMENTS [HOME stringByAppendingPathComponent:@"Documents"]
#define PATH_TIPORELATORIO [DOCUMENTS stringByAppendingPathComponent:@"tipoRelatorio.plist"]


@interface TelaInicial ()

@property (nonatomic, strong) IBOutlet UIButton *toggleButton;
@property (nonatomic, strong) TelaModal *modalTest;
@property BOOL dragable;
@property (nonatomic, strong) ZFModalTransitionAnimator *animator;

@end

@implementation TelaInicial

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dragable = YES;
    
    self.navigationController.title = [NSString stringWithFormat:@"Bradesco Custódia"];

    [[self.btTraneferencia layer] setBorderWidth:1.0f];
    [[self.btTraneferencia layer] setCornerRadius:18.0f];
    [[self.btTraneferencia layer] setBorderColor:[UIColor colorWithRed:0.800 green:0.035 blue:0.184 alpha:1.000].CGColor];
    
    [[self.btRelatorios layer] setBorderWidth:1.0f];
    [[self.btRelatorios layer] setCornerRadius:18.0f];
    [[self.btRelatorios layer] setBorderColor:[UIColor colorWithRed:0.800 green:0.035 blue:0.184 alpha:1.000].CGColor];
    
    [[self.btAutorizacoes layer] setBorderWidth:1.0f];
    [[self.btAutorizacoes layer] setCornerRadius:18.0f];
    [[self.btAutorizacoes layer] setBorderColor:[UIColor colorWithRed:0.800 green:0.035 blue:0.184 alpha:1.000].CGColor];
    
    
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStyleBordered target:nil action:nil];
    [self.navigationItem setBackBarButtonItem:backButton];
    [backButton setTintColor:[UIColor whiteColor]];

    self.navigationController.navigationBar.titleTextAttributes = @{UITextAttributeTextColor:[UIColor whiteColor]};
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.800 green:0.035 blue:0.184 alpha:1.000];
    
    self.imgFundo.image = [UIImage imageNamed:@"IMG_fundo1"];
    self.imgFundoTela2.image = [UIImage imageNamed:@"IMG_fundo2"];
    self.imgLogoBaixo.image = [UIImage imageNamed:@"Untitled"];


    if ([self.view isEqual:@"tela2"]) {
        
        self.view.backgroundColor = [UIColor colorWithRed:0.800 green:0.035 blue:0.184 alpha:1.000];
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
        
    }
    
    
    self.coverFlowView1.delegate = self;
    self.coverFlowView1.pageItemWidth = 320.0;
    self.coverFlowView1.pageItemHeight = 220.0;
    self.coverFlowView1.pageItemCoverWidth = 10.0;
    self.coverFlowView1.pageItemCornerRadius = 0.0;
    self.coverFlowView1.autoAnimation = YES;
    self.coverFlowView1.animationDuration = 6.0;
    [self.coverFlowView1 setPageItemsWithImageNames:@[@"6", @"2", @"3", @"4", @"5"]];
    


//    CFCoverFlowView *coverFlowView = [[CFCoverFlowView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 220)];
//    coverFlowView.backgroundColor = [UIColor groupTableViewBackgroundColor];
//    coverFlowView.pageItemWidth = 320.0;
//    coverFlowView.pageItemCoverWidth = 10.0;
//    coverFlowView.pageItemHeight = 220.0;
//    coverFlowView.pageItemCornerRadius = 0.0;
//    coverFlowView.autoAnimation = YES;
//    coverFlowView.animationDuration = 6.0;
//    [coverFlowView setPageItemsWithImageNames:@[@"1", @"2", @"3", @"4", @"5", @"6"]];
//    [self.view addSubview:coverFlowView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)coverFlowView:(CFCoverFlowView *)coverFlowView didScrollPageItemToIndex:(NSInteger)index{
    
    NSLog(@"didScrollPageItemToIndex >>> %li", (long)index);
    self.pageControl.currentPage = index;
    
}



- (IBAction)pageControlAction:(UIPageControl *)sender{
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)acesso:(UIButton *)sender {
    
    TelaModal *modalVC = [self.storyboard instantiateViewControllerWithIdentifier:@"ModalViewController"];
    modalVC.modalPresentationStyle = UIModalPresentationCustom;
    
    self.animator = [[ZFModalTransitionAnimator alloc] initWithModalViewController:modalVC];
    self.animator.dragable = self.dragable;
    self.animator.bounces = NO;
    self.animator.behindViewAlpha = 0.0f;
    self.animator.behindViewScale = 0.5f;
    self.animator.transitionDuration = 0.7f;
    

    self.animator.direction = ZFModalTransitonDirectionBottom;
    
    modalVC.transitioningDelegate = self.animator;
    [self presentViewController:modalVC animated:YES completion:nil];
    
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskAll;
}

- (IBAction)relatorioMovimentacao:(UIButton *)sender {
    
    NSString *Tipoescolhido = [NSString stringWithFormat:@"1"];
    NSDictionary *dicEscolhido =@{@"tipoRelatorio": Tipoescolhido};
    [dicEscolhido writeToFile:PATH_TIPORELATORIO atomically:YES];
    
    [self performSegueWithIdentifier:@"vaiTelaRelatorios" sender:self];
    
}

- (IBAction)relatorioPosicao:(UIButton *)sender {
    
    NSString *Tipoescolhido = [NSString stringWithFormat:@"2"];
    NSDictionary *dicEscolhido =@{@"tipoRelatorio": Tipoescolhido};
    [dicEscolhido writeToFile:PATH_TIPORELATORIO atomically:YES];
    
    [self performSegueWithIdentifier:@"vaiTelaRelatorios" sender:self];

    
}

- (IBAction)relatorioMensal:(UIButton *)sender {
    
    NSString *Tipoescolhido = [NSString stringWithFormat:@"3"];
    NSDictionary *dicEscolhido =@{@"tipoRelatorio": Tipoescolhido};
    [dicEscolhido writeToFile:PATH_TIPORELATORIO atomically:YES];
    
    [self performSegueWithIdentifier:@"vaiTelaRelatorios" sender:self];

    
}
@end
