//
//  SecondViewController.m
//  PhoneBook
//
//  Created by Debashis Ray on 11/14/18.
//  Copyright © 2018 Debashis Ray. All rights reserved.
//

#import "SecondViewController.h"
#import "CustomTableViewCell.h"
#import "PhoneBook.h"
#import "InputViewController.h"
#import "DetailsViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _tableOutlet.delegate = self;
    _tableOutlet.dataSource = self;
   NSUserDefaults *storage = [NSUserDefaults standardUserDefaults];
   //_phoneBook = [storage objectForKey:@"phonebook"];
    [_tableOutlet reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [_phoneBook count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifer = @"cellIdentifier";
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: identifer];
    
    cell.nameOutlet.text = [_phoneBook[indexPath.row] names];
    cell.phoneNumberOutlet.text = [_phoneBook[indexPath.row] number];
 
    return  cell;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 138;
}
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    if(editingStyle == UITableViewCellEditingStyleDelete)
    {
        [_phoneBook removeObjectAtIndex: _tableOutlet.indexPathForSelectedRow.row];
        [_tableOutlet reloadData];
    }
    [_tableOutlet reloadData];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation

*/
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //_indexNumber = (int)indexPath.row;
    UIStoryboard *mainStoryBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    
    
    DetailsViewController *nextViewController = [mainStoryBoard instantiateViewControllerWithIdentifier:@"DetailsViewController"];
    
    nextViewController.phb = _phoneBook[indexPath.row];
    
    [self.navigationController pushViewController:nextViewController animated:YES];
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if([segue.identifier isEqualToString:@"addContactIdentifer"])
    {
        InputViewController *inputNextViewController = segue.destinationViewController;
        inputNextViewController.phoneBook = _phoneBook;
    }
}

@end
