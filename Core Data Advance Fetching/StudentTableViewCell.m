//
//  StudentTableViewCell.m
//  Core Data Advance Fetching
//
//  Created by Admin on 11/22/18.
//  Copyright © 2018 iZak. All rights reserved.
//

#import "StudentTableViewCell.h"

@implementation StudentTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (void) configureCell:(NSManagedObject*)currentStudent{
    
    _nameLabelOutlet.text = [currentStudent valueForKey:@"name"];
    _ageLabelOutlet.text = [currentStudent valueForKey:@"age"];
    _idLabelOutlet.text = [currentStudent valueForKey:@"id"];
    _deptLabelOutlet.text = [currentStudent valueForKey:@"dept"];
    
}

@end
