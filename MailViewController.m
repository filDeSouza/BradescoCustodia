/*
 * MGSwipeTableCell is licensed under MIT license. See LICENSE.md file for more information.
 * Copyright (c) 2014 Imanol Fernandez @MortimerGoro
 */

#import "MailViewController.h"
#import "MailTableCell.h"
#import "MGSwipeButton.h"


@interface MailData : NSObject
@property (nonatomic, strong) NSString * from;
@property (nonatomic, strong) NSString * subject;
@property (nonatomic, strong) NSString * message;
@property (nonatomic, strong) NSString * date;
@property (nonatomic, assign) BOOL read;
@property (nonatomic, assign) BOOL flag;

@end

@implementation MailData
@end


typedef void(^MailActionCallback)(BOOL cancelled, BOOL deleted, NSInteger actionIndex);

@implementation MailViewController
{
    NSMutableArray * demoData;
    MailActionCallback actionCallback;
    UIRefreshControl * refreshControl;
}


-(void) prepareDemoData
{
    demoData = [NSMutableArray array];
    
    NSArray * from = @[
                       @"BRAD PRIV FIA IBOVESPA ALAVANCADO",
                       @"BRADESCO F.I. REFERENCIADO DI BACCARAT",
                       @"BRADESCO FUNDO DE INVESTIMENTO RENDA FIXA BOND",
                       @"FIC DE FIM CRED PRIV CATAVENTO",
                       @"BRADESCO F.I. CAMBIAL EURO",
                       @"BRADESCO F.I. MULTIMERCADO CRÉDITO PRIVADO GALILEO",
                       @"BRADESCO FIA IBOVESPA PLUS",
                       @"JAGUAR FI MULTIMERCADO CRÉDITO PRIVADO",
                       @"BRADESCO F.I. MULTIMERCADO CRÉDITO PRIVADO MAXIMUS",
                       @"BRADESCO FUNDO APOS. PROGRAMADA INDIV. FAPI FIX",
                       @"BRADESCO F.I. R.F. LONGO PRAZO YIELD"
                       ];
    
    NSArray * subjects = @[
                           @"Status: Digitado",
                           @"Status: Digitado",
                           @"Status: Digitado",
                           @"Status: Digitado",
                           @"Status: Digitado",
                           @"Status: Digitado",
                           @"Status: Digitado",
                           @"Status: Digitado",
                           @"Status: Digitado",
                           @"Status: Digitado",
                           @"Status: Digitado",
                           ];
    
    NSArray * messages = @[
                           @"Valor: R$ 100.000,00",
                           @"Valor: R$ 5.000,00",
                           @"Valor: R$ 53.000,00",
                           @"Valor: R$ 70.000,00",
                           @"Valor: R$ 15.000,00",
                           @"Valor: R$ 85.000,00",
                           @"Valor: R$ 500.000,00",
                           @"Valor: R$ 150.000,00",
                           @"Valor: R$ 10.000,00",
                           @"Valor: R$ 5.000,00",
                           @"Valor: R$ 20.000,00",
                           ];
    
    
    for (int i = 0; i < messages.count; ++i) {
        MailData * mail = [[MailData alloc] init];
        mail.from = [from objectAtIndex:i];
        mail.subject = [subjects objectAtIndex:i];
        mail.message = [messages objectAtIndex:i];
        mail.date = [NSString stringWithFormat:@"11:%d", 21 + i];
        [demoData addObject:mail];
    }
    
}

-(void) refreshCallback
{
    [self prepareDemoData];
    [_tableView reloadData];
    [refreshControl endRefreshing];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    
    self.title = @"MSwipeTableCell MailApp";
    
    refreshControl = [[UIRefreshControl alloc] init];
    [refreshControl addTarget:self action:@selector(refreshCallback) forControlEvents:UIControlEventValueChanged];
    [self.tableView addSubview:refreshControl];
    
    [self prepareDemoData];
}

-(void) viewDidAppear:(BOOL)animated
{
    [self.tableView reloadData];
}

-(void) viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    _tableView.frame = self.view.bounds;
}

-(void) deleteMail:(NSIndexPath *) indexPath
{
    [demoData removeObjectAtIndex:indexPath.row];
    [_tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationLeft];
}

-(MailData *) mailForIndexPath:(NSIndexPath*) path
{
    return [demoData objectAtIndex:path.row];
}

-(void) updateCellIndicactor:(MailData *) mail cell:(MailTableCell*) cell
{
    UIColor * color;
    UIColor * innerColor;
    if (!mail.read && mail.flag) {
        color = [UIColor colorWithRed:1.0 green:149/255.0 blue:0.05 alpha:1.0];
        innerColor = [UIColor colorWithRed:0 green:122/255.0 blue:1.0 alpha:1.0];
    }
    else if (mail.flag) {
        color = [UIColor colorWithRed:1.0 green:149/255.0 blue:0.05 alpha:1.0];
    }
    else if (mail.read) {
        color = [UIColor clearColor];
    }
    else {
        color = [UIColor colorWithRed:0 green:122/255.0 blue:1.0 alpha:1.0];
    }
    
    cell.indicatorView.indicatorColor = color;
    cell.indicatorView.innerColor = innerColor;
}

-(void) showMailActions:(MailData *) mail callback:(MailActionCallback) callback
{
    actionCallback = callback;
    UIActionSheet * sheet = [[UIActionSheet alloc] initWithTitle:@"Actions" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:@"Excluir" otherButtonTitles:mail.read ? @"Mark as unread": @"Autorizar", @"Rejeitar", nil];
    [sheet showInView:self.view];
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    actionCallback(buttonIndex == actionSheet.cancelButtonIndex, buttonIndex == actionSheet.destructiveButtonIndex, buttonIndex);
    actionCallback = nil;
}

-(NSString *) readButtonText:(BOOL) read
{
    return read ? @"Mark as\nunread" :@"Autorizar";
}


#pragma mark Table Delegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return demoData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * identifier = @"MailCell";
    MailTableCell * cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[MailTableCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    cell.delegate = self;
    
    MailData * data = [demoData objectAtIndex:indexPath.row];
    cell.mailFrom.text = data.from;
    cell.mailSubject.text = data.subject;
    cell.mailMessage.text = data.message;
    cell.mailTime.text = data.date;
    [self updateCellIndicactor:data cell:cell];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 110;
}

#pragma mark Swipe Delegate

-(BOOL) swipeTableCell:(MGSwipeTableCell*) cell canSwipe:(MGSwipeDirection) direction;
{
    return YES;
}

-(NSArray*) swipeTableCell:(MGSwipeTableCell*) cell swipeButtonsForDirection:(MGSwipeDirection)direction
             swipeSettings:(MGSwipeSettings*) swipeSettings expansionSettings:(MGSwipeExpansionSettings*) expansionSettings
{
    
    swipeSettings.transition = MGSwipeTransitionBorder;
    expansionSettings.buttonIndex = 0;
    
    __weak MailViewController * me = self;
    MailData * mail = [me mailForIndexPath:[self.tableView indexPathForCell:cell]];
    
    if (direction == MGSwipeDirectionLeftToRight) {
        
        expansionSettings.fillOnTrigger = NO;
        expansionSettings.threshold = 2;
        return @[[MGSwipeButton buttonWithTitle:[me readButtonText:mail.read] backgroundColor:[UIColor colorWithRed:0 green:122/255.0 blue:1.0 alpha:1.0] padding:5 callback:^BOOL(MGSwipeTableCell *sender) {
            
            MailData * mail = [me mailForIndexPath:[me.tableView indexPathForCell:sender]];
            mail.read = !mail.read;
            [me updateCellIndicactor:mail cell:(MailTableCell*)sender];
            [cell refreshContentView]; //needed to refresh cell contents while swipping
            
            //change button text
            [(UIButton*)[cell.leftButtons objectAtIndex:0] setTitle:[me readButtonText:mail.read] forState:UIControlStateNormal];
            
            NSIndexPath * indexPath = [me.tableView indexPathForCell:sender];
            [me deleteMail:indexPath];
            
            return YES;
        }]];
    }
    else {
        
        expansionSettings.fillOnTrigger = YES;
        expansionSettings.threshold = 1.1;

        CGFloat padding = 15;
        
        MGSwipeButton * trash = [MGSwipeButton buttonWithTitle:@"Excluir" backgroundColor:[UIColor colorWithRed:1.0 green:59/255.0 blue:50/255.0 alpha:1.0] padding:padding callback:^BOOL(MGSwipeTableCell *sender) {
            
            NSIndexPath * indexPath = [me.tableView indexPathForCell:sender];
            [me deleteMail:indexPath];
            return NO; //don't autohide to improve delete animation
        }];
        MGSwipeButton * flag = [MGSwipeButton buttonWithTitle:@"Rejeitar" backgroundColor:[UIColor colorWithRed:1.0 green:149/255.0 blue:0.05 alpha:1.0] padding:padding callback:^BOOL(MGSwipeTableCell *sender) {
            
            MailData * mail = [me mailForIndexPath:[me.tableView indexPathForCell:sender]];
            mail.flag = !mail.flag;
            [me updateCellIndicactor:mail cell:(MailTableCell*)sender];
            [cell refreshContentView]; //needed to refresh cell contents while swipping
            return YES;
        }];
        
        
        return @[trash, flag];
    }
    
    return nil;
    
}

-(void) swipeTableCell:(MGSwipeTableCell*) cell didChangeSwipeState:(MGSwipeState)state gestureIsActive:(BOOL)gestureIsActive
{
    NSString * str;
    switch (state) {
        case MGSwipeStateNone: str = @"None"; break;
        case MGSwipeStateSwippingLeftToRight: str = @"SwippingLeftToRight"; break;
        case MGSwipeStateSwippingRightToLeft: str = @"SwippingRightToLeft"; break;
        case MGSwipeStateExpandingLeftToRight: str = @"ExpandingLeftToRight"; break;
        case MGSwipeStateExpandingRightToLeft: str = @"ExpandingRightToLeft"; break;
    }
    NSLog(@"Swipe state: %@ ::: Gesture: %@", str, gestureIsActive ? @"Active" : @"Ended");
}

@end
