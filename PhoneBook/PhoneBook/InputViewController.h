//
//  InputViewController.h
//  PhoneBook
//
//  Created by Debashis Ray on 11/14/18.
//  Copyright © 2018 Debashis Ray. All rights reserved.
//

#import "ViewController.h"
#import "PhoneBook.h"

NS_ASSUME_NONNULL_BEGIN

@interface InputViewController : ViewController

@property (weak, nonatomic) IBOutlet UITextField *inputNameOutlet;
@property (weak, nonatomic) IBOutlet UITextField *inputNumberOutlet;
@property (weak, nonatomic) IBOutlet UITextView *inputAddressOutlet;
@property (weak, nonatomic) IBOutlet UITextField *inputEmailOutlet;
@property (weak, nonatomic) IBOutlet UITextField *inputTelephoneOutlet;
@property (strong,nonatomic) NSMutableArray *phoneBook;
- (IBAction)saveButton:(id)sender;
- (IBAction)doneButton:(id)sender;

@end

NS_ASSUME_NONNULL_END
