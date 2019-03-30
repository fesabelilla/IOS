//
//  CustomTableViewCell.h
//  Table View Data Pass
//
//  Created by user on 11/11/18.
//  Copyright © 2018 shamit. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CustomTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imageViewOutlet;
@property (weak, nonatomic) IBOutlet UILabel *titleViewOutlet;
@property (weak, nonatomic) IBOutlet UILabel *typeViewOutlet;
@property (weak, nonatomic) IBOutlet UILabel *priceViewOutlet;

@end

NS_ASSUME_NONNULL_END
