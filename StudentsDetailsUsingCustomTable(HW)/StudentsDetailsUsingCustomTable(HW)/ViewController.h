//
//  ViewController.h
//  StudentsDetailsUsingCustomTable(HW)
//
//  Created by macOS on 11/14/18.
//  Copyright © 2018 macOS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *studentsDetailsTable;
@property (weak, nonatomic) IBOutlet UITextField *nameEditText;
@property (weak, nonatomic) IBOutlet UITextField *classEditText;
@property (weak, nonatomic) IBOutlet UITextField *idEditText;
@property (weak, nonatomic) IBOutlet UITextField *studentImgEditText;
- (IBAction)saveBTN:(UIButton *)sender;
- (IBAction)deleteBTN:(UIButton *)sender;



@end

