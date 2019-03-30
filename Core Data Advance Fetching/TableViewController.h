//
//  TableViewController.h
//  Core Data Advance Fetching
//
//  Created by Admin on 11/22/18.
//  Copyright © 2018 iZak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BookTableViewController.h"
#import "AppDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface TableViewController : UITableViewController{
    
    AppDelegate *appDelegate;
    NSArray *students;
  
    
}
 @property (strong , nonatomic) NSManagedObjectContext *moc;

- (IBAction)addButtonPressed:(UIBarButtonItem *)sender;
- (IBAction)trashButtonPressed:(UIBarButtonItem *)sender;

@end

NS_ASSUME_NONNULL_END
