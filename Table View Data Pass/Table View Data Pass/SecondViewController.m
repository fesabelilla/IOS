//
//  SecondViewController.m
//  Table View Data Pass
//
//  Created by user on 11/11/18.
//  Copyright © 2018 shamit. All rights reserved.
//

#import "SecondViewController.h"
#import "CustomTableViewCell.h"
#import "Item.h"
#import "DetailsViewController.h"

@interface SecondViewController ()

//@property int indexNumber;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _tableViewOutlet.delegate = self;
    _tableViewOutlet.dataSource = self;
    // _itemInfo = [[NSMutableArray alloc]init];
    //_indexNumber = 0;
    
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_itemInfo count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifer = @"cellNewIdentifier";
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: identifer];
    
    
       cell.titleViewOutlet.text =  [ _itemInfo[indexPath.row] itemTitle]  ;
    cell.typeViewOutlet.text = [ _itemInfo[indexPath.row] itemType];
        cell.priceViewOutlet.text = [ _itemInfo[indexPath.row] itemPrice];
       cell.imageViewOutlet.image = [UIImage imageNamed:[ _itemInfo[indexPath.row] itemImageName]];
    
    return cell;
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 226;
}

- (IBAction)deleteButton:(id)sender {
    
    [_itemInfo removeObjectAtIndex: _tableViewOutlet.indexPathForSelectedRow.row];
    [_tableViewOutlet reloadData];
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //_indexNumber = (int)indexPath.row;
    UIStoryboard *mainStoryBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    DetailsViewController *nextViewController = [mainStoryBoard instantiateViewControllerWithIdentifier:@"DetailsViewController"];
    [self.navigationController pushViewController:nextViewController animated:YES];
    
}
@end
