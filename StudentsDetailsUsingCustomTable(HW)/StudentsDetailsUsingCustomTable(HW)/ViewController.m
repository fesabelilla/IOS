//
//  ViewController.m
//  StudentsDetailsUsingCustomTable(HW)
//
//  Created by macOS on 11/14/18.
//  Copyright © 2018 macOS. All rights reserved.
//

#import "ViewController.h"
#import "SecondTableViewCell.h"
#import "StudentDetails.h"

@interface ViewController ()
@property(strong,nonatomic) NSMutableArray *studentName;
@property(strong,nonatomic) NSMutableArray *studentClass;
@property(strong,nonatomic) NSMutableArray *studentID;
@property(strong,nonatomic) NSMutableArray *studentImg;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _studentsDetailsTable.delegate = self;
    _studentsDetailsTable.dataSource = self;
    _studentName = [[NSMutableArray alloc]init];
    _studentClass = [[NSMutableArray alloc]init];
    _studentID = [[NSMutableArray alloc]init];
    _studentImg = [[NSMutableArray alloc]init];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [_studentID count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    SecondTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"studentDetailsIdentifier"];
    cell.studentImgOutlet.image = [UIImage imageNamed: _studentImg[indexPath.row]];
    cell.studentNameOutlet.text = _studentName[indexPath.row];
    cell.studentClassOutlet.text = _studentClass[indexPath.row];
    cell.studentIDOutlet.text = _studentID[indexPath.row];
    
    return  cell;
}
- (IBAction)saveBTN:(UIButton *)sender {
    
    [_studentName addObject:_nameEditText.text];
    [_studentID addObject: _idEditText.text];
    [_studentClass addObject: _classEditText.text];
    [_studentImg addObject: _studentImgEditText.text];
    [_studentsDetailsTable reloadData];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 189;
}
- (IBAction)deleteBTN:(UIButton *)sender {
    [_studentImg removeObjectAtIndex: _studentsDetailsTable.indexPathForSelectedRow.row];
    [_studentID removeObjectAtIndex: _studentsDetailsTable.indexPathForSelectedRow.row];
    [_studentClass removeObjectAtIndex: _studentsDetailsTable.indexPathForSelectedRow.row];
    [_studentName removeObjectAtIndex: _studentsDetailsTable.indexPathForSelectedRow.row];
    
    [_studentsDetailsTable reloadData];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UIStoryboard *mainStoryBord = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    StudentDetails *nextViewController = [mainStoryBord instantiateViewControllerWithIdentifier:@"StudentDetails"];
    
    nextViewController.stdImg = _studentImg[indexPath.row];
    nextViewController.stdName = _studentName[indexPath.row];
    nextViewController.stdClass = _studentClass[indexPath.row];
    nextViewController.stdID = _studentID[indexPath.row];
    
    [self.navigationController pushViewController:nextViewController animated: YES];
    
}

@end
