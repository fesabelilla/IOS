//
//  BookTableViewController.m
//  Core Data Advance Fetching
//
//  Created by Admin on 11/22/18.
//  Copyright © 2018 iZak. All rights reserved.
//

#import "BookTableViewController.h"

@interface BookTableViewController ()

@end

@implementation BookTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    self.moc = appDelegate.persistentContainer.viewContext;
    
    
    [self loadData];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [_books count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSArray *bookArray = _books.allObjects;
    NSManagedObject *currenBook = bookArray[indexPath.row];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BookCell" forIndexPath:indexPath];
    
    cell.textLabel.text = [currenBook valueForKey:@"name"];
    cell.detailTextLabel.text = [currenBook valueForKey:@"author"];
    
    return cell;
}

- (IBAction)addBookButtonPressed:(UIBarButtonItem *)sender {
    
    UIAlertController *addBookAlert = [UIAlertController alertControllerWithTitle:@"Add Book" message:@"Please provite book info for adding database" preferredStyle:UIAlertControllerStyleAlert];
    
    [addBookAlert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"Name";
        
    }];
    
    [addBookAlert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"Author";
        
    }];
    
    
    NSArray *textFields = addBookAlert.textFields;
    
    UITextField *name = textFields[0];
    UITextField *author = textFields[1];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
    
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        NSEntityDescription *bookEntity = [NSEntityDescription entityForName:@"Book" inManagedObjectContext:self.moc];
        NSManagedObject *newBook = [[NSManagedObject alloc]initWithEntity:bookEntity insertIntoManagedObjectContext:self.moc];
        
        [newBook setValue:name.text forKey:@"name"];
        [newBook setValue:author.text forKey:@"author"];
        
        NSManagedObject *currentStudent = self.students[self.currentStudentIndex];
        
        
        if([self.books count] == 0){
            [currentStudent setValue:[NSSet setWithObject:newBook] forKey:@"books"];
        }else{
            
            [self.books addObject:newBook];
            [currentStudent setValue:self.books forKey:@"books"];
            
        }
        
        
        NSError *error = nil;
        
        if( ![currentStudent.managedObjectContext save:&error]){
            
            
            NSLog(@"Error in saving book");
        }
        
        [self loadData];
        
    }];
    
    
    [addBookAlert addAction:okAction];
    [addBookAlert addAction:cancelAction];
    
    [self presentViewController:addBookAlert animated:YES completion:nil];
    
}

-(void)loadData{
    NSFetchRequest *request = [[NSFetchRequest alloc]initWithEntityName:@"Student"];
    
    NSError *error = nil;
    self.students = [self.moc executeFetchRequest:request error:&error];
    
    NSManagedObject *currentStudent = _students[self.currentStudentIndex];
    
    _books = [currentStudent mutableSetValueForKey:@"books"];
   
    [self.tableView reloadData];
}



@end
