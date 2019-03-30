//
//  DetailsViewController.h
//  PhoneBook
//
//  Created by Debashis Ray on 11/14/18.
//  Copyright © 2018 Debashis Ray. All rights reserved.
//

#import "ViewController.h"
#import "PhoneBook.h"

NS_ASSUME_NONNULL_BEGIN

@interface DetailsViewController : ViewController

@property (strong,nonatomic) PhoneBook *phb;
@property (weak, nonatomic) IBOutlet UILabel *nameDetaillsOutlet;
@property (weak, nonatomic) IBOutlet UILabel *numberDetailsOutlet;
@property (weak, nonatomic) IBOutlet UILabel *addressDetailsOutlet;
@property (weak, nonatomic) IBOutlet UILabel *emailDetailsOutlet;
@property (weak, nonatomic) IBOutlet UILabel *telePhoneNoDetailsOutlet;

@end

NS_ASSUME_NONNULL_END
