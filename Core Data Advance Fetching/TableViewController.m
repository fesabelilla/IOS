//
//  TableViewController.m
//  Core Data Advance Fetching
//
//  Created by Admin on 11/22/18.
//  Copyright © 2018 iZak. All rights reserved.
//

#import "TableViewController.h"
#import "StudentTableViewCell.h"


@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    self.moc = appDelegate.persistentContainer.viewContext;
    
    [self loadData];
    
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [students count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSManagedObject *currentStudent = students[indexPath.row];
    
    StudentTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"StudentInfoCell" forIndexPath:indexPath];
    
    [cell configureCell:currentStudent];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 115;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UIStoryboard *mainStoryBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    BookTableViewController *bookController = [mainStoryBoard instantiateViewControllerWithIdentifier:@"BookTableViewController"];
    
    
    bookController.currentStudentIndex = indexPath.row;
    [self.navigationController pushViewController:bookController animated:YES];
    
}



- (IBAction)addButtonPressed:(UIBarButtonItem *)sender {
    
    [self alertViewConfigure];
    
    
}

- (IBAction)trashButtonPressed:(UIBarButtonItem *)sender {
    
    
    NSManagedObject *deleteStudent = students[self.tableView.indexPathForSelectedRow.row];
    
    
    [self.moc deleteObject:deleteStudent];
    NSError *error = nil;
    
    if( ![deleteStudent.managedObjectContext save:&error]){
        
        NSLog(@"Error in deleting data");
    }
    
    [self loadData];
}


//Loading data from database

-(void)loadData{
    NSFetchRequest *request = [[NSFetchRequest alloc]initWithEntityName:@"Student"];
    
//    NSSortDescriptor *sortByName = [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES];
//    [request setSortDescriptors:@[sortByName]];
//
//
//    NSPredicate *getStudentByOlderAge = [NSPredicate predicateWithFormat:@"%K == %@",@"name",@"Safat"];
//
//    [request setPredicate:getStudentByOlderAge];
//
    
    NSError *error = nil;
    students = [self.moc executeFetchRequest:request error:&error];
    
    if(error){
        
    }
  
    [self.tableView reloadData];
}





//Configure AlertView
-(void)alertViewConfigure{
    
    UIAlertController *addStudentAlert = [UIAlertController alertControllerWithTitle:@"Add Student" message:@"Please provite student info for adding database" preferredStyle:UIAlertControllerStyleAlert];
    
    [addStudentAlert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"Name";
        
    }];
    
    [addStudentAlert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"ID";
        
    }];
    
    [addStudentAlert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"Age";
        
    }];
    
    [addStudentAlert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"Dept";
        
    }];
    
    NSArray *studentTextFields = addStudentAlert.textFields;
    
    UITextField *name = studentTextFields[0];
    UITextField *iD = studentTextFields[1];
    UITextField *age = studentTextFields[2];
    UITextField *dept = studentTextFields[3];
    
    
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        NSEntityDescription *entity = [NSEntityDescription entityForName:@"Student" inManagedObjectContext:self.moc];
        NSManagedObject *newStudent = [[NSManagedObject alloc]initWithEntity:entity insertIntoManagedObjectContext:self.moc];
        
        [newStudent setValue:name.text forKey:@"name"];
        [newStudent setValue:iD.text forKey:@"id"];
        [newStudent setValue:age.text forKey:@"age"];
        [newStudent setValue:dept.text forKey:@"dept"];
        
        
        NSError *error = nil;
        
        if(![newStudent.managedObjectContext save:&error]){
            
            NSLog(@"Error in saving data");
        }
        
        [self loadData];
    }];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
    
    [addStudentAlert addAction:okAction];
    [addStudentAlert addAction:cancelAction];
    
    [self presentViewController:addStudentAlert animated:YES completion:nil];
    
}


@end
