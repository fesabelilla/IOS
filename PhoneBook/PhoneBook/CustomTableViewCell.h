//
//  CustomTableViewCell.h
//  PhoneBook
//
//  Created by Debashis Ray on 11/14/18.
//  Copyright © 2018 Debashis Ray. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CustomTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *nameOutlet;

@property (weak, nonatomic) IBOutlet UILabel *phoneNumberOutlet;

@end

NS_ASSUME_NONNULL_END
