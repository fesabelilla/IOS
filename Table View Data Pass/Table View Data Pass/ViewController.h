//
//  ViewController.h
//  Table View Data Pass
//
//  Created by user on 11/11/18.
//  Copyright © 2018 shamit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *inputTitleOutlet;
@property (weak, nonatomic) IBOutlet UITextField *inputTypeOutlet;

@property (weak, nonatomic) IBOutlet UITextField *inputPriceOutlet;
@property (weak, nonatomic) IBOutlet UITextField *inputImageOutlet;
- (IBAction)SaveButton:(id)sender;

@property (strong,nonatomic) NSMutableArray *saveItemInfo;
@end

