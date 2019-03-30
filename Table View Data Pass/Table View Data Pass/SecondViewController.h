//
//  SecondViewController.h
//  Table View Data Pass
//
//  Created by user on 11/11/18.
//  Copyright © 2018 shamit. All rights reserved.
//

#import "ViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : ViewController<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableViewOutlet;
@property (strong,nonatomic) NSMutableArray *itemInfo;
- (IBAction)deleteButton:(id)sender;


@end

NS_ASSUME_NONNULL_END
