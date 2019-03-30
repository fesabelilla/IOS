//
//  DetailsViewController.m
//  PhoneBook
//
//  Created by Debashis Ray on 11/14/18.
//  Copyright © 2018 Debashis Ray. All rights reserved.
//

#import "DetailsViewController.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _nameDetaillsOutlet.text = _phb.names;
    _numberDetailsOutlet.text = _phb.number;
    _addressDetailsOutlet.text = _phb.address;
    _emailDetailsOutlet.text = _phb.email;
    _telePhoneNoDetailsOutlet.text = _phb.telePhoneNo;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
