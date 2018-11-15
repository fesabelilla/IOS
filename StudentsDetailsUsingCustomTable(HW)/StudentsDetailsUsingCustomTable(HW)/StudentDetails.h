//
//  StudentDetails.h
//  StudentsDetailsUsingCustomTable(HW)
//
//  Created by macOS on 11/14/18.
//  Copyright © 2018 macOS. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface StudentDetails : UIViewController

@property(strong,nonatomic)NSString *stdImg;
@property(strong,nonatomic)NSString *stdClass;
@property(strong,nonatomic)NSString *stdName;
@property(strong,nonatomic)NSString *stdID;
@property(strong,nonatomic)NSString *stdProfile;


@property (weak, nonatomic) IBOutlet UIImageView *imgOutlet;
@property (weak, nonatomic) IBOutlet UILabel *nameOutlet;
@property (weak, nonatomic) IBOutlet UILabel *classOutlet;
@property (weak, nonatomic) IBOutlet UILabel *idOutlet;
@property (weak, nonatomic) IBOutlet UILabel *stdProfileOutlet;
- (IBAction)rfBtn:(UIButton *)sender;

@end

NS_ASSUME_NONNULL_END
