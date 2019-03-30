//
//  ViewController.h
//  working with NSUserDefault
//
//  Created by MACLAB on 13/11/18.
//  Copyright © 2018 pro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *labelOutlet;
@property (weak, nonatomic) IBOutlet UITextField *textFieldOutlet;

- (IBAction)saveButton:(id)sender;

@end

