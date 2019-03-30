//
//  TableViewController.h
//  Working with TableViewController
//
//  Created by user on 15/11/18.
//  Copyright © 2018 digicon. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableViewController : UITableViewController
- (IBAction)addItemButton:(id)sender;
@property (strong,nonatomic) NSMutableArray *contacts;

@end

NS_ASSUME_NONNULL_END
