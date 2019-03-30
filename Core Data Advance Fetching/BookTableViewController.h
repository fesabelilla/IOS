//
//  BookTableViewController.h
//  Core Data Advance Fetching
//
//  Created by Admin on 11/22/18.
//  Copyright © 2018 iZak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface BookTableViewController : UITableViewController{
    AppDelegate *appDelegate;
    
    
}
 @property   NSArray *students;
 @property  NSMutableSet *books;

    


@property NSManagedObjectContext *moc;
@property long currentStudentIndex;



- (IBAction)addBookButtonPressed:(UIBarButtonItem *)sender;

@end

NS_ASSUME_NONNULL_END
