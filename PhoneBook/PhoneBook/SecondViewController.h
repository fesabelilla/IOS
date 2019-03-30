//
//  SecondViewController.h
//  PhoneBook
//
//  Created by Debashis Ray on 11/14/18.
//  Copyright © 2018 Debashis Ray. All rights reserved.
//

#import "ViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : ViewController<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableOutlet;
@property (strong,nonatomic) NSMutableArray *phoneBook;

@end

NS_ASSUME_NONNULL_END
