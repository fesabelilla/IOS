//
//  ViewController.h
//  Table View
//
//  Created by MACLAB on 13/11/18.
//  Copyright © 2018 pro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableViewOutlet;

@property (weak, nonatomic) IBOutlet UITextField *subtitleOutlet;
@property (weak, nonatomic) IBOutlet UITextField *titleOutlet;
- (IBAction)saveButton:(id)sender;

@end

