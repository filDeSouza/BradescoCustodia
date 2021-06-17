//
//  ClasseTableViewController.h
//  Fundos de Investimento FIDC
//
//  Created by Filipe de Souza on 21/10/14.
//  Copyright (c) 2014 Filipe de Souza. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CFCoverFlowView.h"

@interface ClasseTableViewController : UITableViewController <CFCoverFlowViewDelegate>

@property (weak, nonatomic) IBOutlet CFCoverFlowView *coverFlowView1;

@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;

- (IBAction)pageControlAction:(UIPageControl *)sender;

@property (nonatomic) NSArray *fundos;


@property (weak, nonatomic) IBOutlet UINavigationItem *barra;

@property (weak, nonatomic) IBOutlet UIImageView *imagemLogo;

@property (weak, nonatomic) IBOutlet UIImageView *imagemCima;

@end
