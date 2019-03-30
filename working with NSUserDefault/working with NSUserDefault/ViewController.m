//
//  ViewController.m
//  working with NSUserDefault
//
//  Created by MACLAB on 13/11/18.
//  Copyright © 2018 pro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSUserDefaults *storage = [NSUserDefaults standardUserDefaults];
    _labelOutlet.text = [storage valueForKey:@"1"];
}


- (IBAction)saveButton:(id)sender {
    
    NSUserDefaults *storage = [NSUserDefaults standardUserDefaults];
    
    [storage setObject:_textFieldOutlet.text forKey:@"1"];
    
    _labelOutlet.text = _textFieldOutlet.text;
    
}
@end
