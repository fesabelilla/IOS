//
//  StudentTableViewCell.h
//  Core Data Advance Fetching
//
//  Created by Admin on 11/22/18.
//  Copyright © 2018 iZak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface StudentTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *nameLabelOutlet;
@property (weak, nonatomic) IBOutlet UILabel *deptLabelOutlet;
@property (weak, nonatomic) IBOutlet UILabel *idLabelOutlet;
@property (weak, nonatomic) IBOutlet UILabel *ageLabelOutlet;

- (void) configureCell:(NSManagedObject*)currentStudent;

@end

NS_ASSUME_NONNULL_END
