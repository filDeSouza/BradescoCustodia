//
//  TelaAutorizacoes.m
//  Bradesco Custódia
//
//  Created by Filipe de Souza on 15/05/15.
//  Copyright (c) 2015 Filipe de Souza. All rights reserved.
//

#import "TelaAutorizacoes.h"
#import "MLPAutoCompleteTextField.h"
#import "DEMOCustomAutoCompleteCell.h"
#import "DEMOCustomAutoCompleteObject.h"

@interface TelaAutorizacoes ()

@end

@implementation TelaAutorizacoes

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.campoCarteira setBorderStyle:UITextBorderStyleRoundedRect];
    
    if ([[[UIDevice currentDevice] systemVersion] compare:@"6.0" options:NSNumericSearch] != NSOrderedAscending) {
        [self.campoCarteira registerAutoCompleteCellClass:[DEMOCustomAutoCompleteCell class]
                                           forCellReuseIdentifier:@"CustomCellId"];
    }
    else{
        //Turn off bold effects on iOS 5.0 as they are not supported and will result in an exception
        self.campoCarteira.applyBoldEffectToAutoCompleteSuggestions = NO;
    }


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)typeDidChange:(UISegmentedControl *)sender
{
    if(sender.selectedSegmentIndex == 0){
        [self.campoCarteira setAutoCompleteTableAppearsAsKeyboardAccessory:NO];
    } else {
        [self.campoCarteira setAutoCompleteTableAppearsAsKeyboardAccessory:YES];
    }
    
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
    
    
    [self.campoCarteira setAutoCompleteTableViewHidden:NO];
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
