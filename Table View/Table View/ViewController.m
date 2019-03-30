//
//  ViewController.m
//  Table View
//
//  Created by MACLAB on 13/11/18.
//  Copyright © 2018 pro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong,nonatomic) NSMutableArray *titles;
@property (strong,nonatomic) NSMutableArray *subTitles;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _titles = [[NSMutableArray alloc]init];
    _subTitles = [[NSMutableArray alloc]init];
    // Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_titles count] ;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellNewIdentifier"];
    
    cell.textLabel.text = _titles[indexPath.row];
    cell.detailTextLabel.text = _subTitles[indexPath.row];
    
    
    return cell;
}


- (IBAction)saveButton:(id)sender {
    
    [_titles addObject:_titleOutlet.text];
    [_subTitles addObject:_subtitleOutlet.text];
    [_tableViewOutlet reloadData];
}
@end
