//
//  SecondTableViewCell.h
//  StudentsDetailsUsingCustomTable(HW)
//
//  Created by macOS on 11/14/18.
//  Copyright © 2018 macOS. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SecondTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *studentImgOutlet;
@property (weak, nonatomic) IBOutlet UILabel *studentNameOutlet;
@property (weak, nonatomic) IBOutlet UILabel *studentClassOutlet;
@property (weak, nonatomic) IBOutlet UILabel *studentIDOutlet;


@end

NS_ASSUME_NONNULL_END
