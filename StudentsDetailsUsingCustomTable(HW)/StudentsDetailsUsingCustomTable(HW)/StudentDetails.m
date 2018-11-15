//
//  StudentDetails.m
//  StudentsDetailsUsingCustomTable(HW)
//
//  Created by macOS on 11/14/18.
//  Copyright © 2018 macOS. All rights reserved.
//

#import "StudentDetails.h"

@interface StudentDetails ()

@end

@implementation StudentDetails

- (void)viewDidLoad {
    [super viewDidLoad];
    _imgOutlet.image = [UIImage imageNamed:_stdImg];
    _nameOutlet.text = _stdName;
    _classOutlet.text = _stdClass;
    _idOutlet.text = _stdID;
    
    NSUserDefaults *stronge = [NSUserDefaults standardUserDefaults];
    _stdProfileOutlet.text = [stronge valueForKey:@"1"];
    //_inputOutlate.text =[stronge valueForKey:@"1"];
    
}


- (IBAction)rfBtn:(UIButton *)sender {
    NSUserDefaults *stronge = [NSUserDefaults standardUserDefaults];
    [stronge setObject:@"  Student Profile" forKey:@"1"];
    _stdProfileOutlet.text = @"Student Profile";
}
@end
