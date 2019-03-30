//
//  ViewController.m
//  Working with AlertViewController
//
//  Created by user on 15/11/18.
//  Copyright © 2018 digicon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)showAlertButton:(id)sender
{
    //[self showMessegeDialog];
    [self addItemsAlertView];

}

-(void)addItemsAlertView
{
    UIAlertController *addItemView = [UIAlertController alertControllerWithTitle:@"Add Item" message:@"Please Insert Your Items Bellow" preferredStyle:UIAlertControllerStyleAlert];
    
   // [addItemView addTextFieldWithConfigurationHandler:nil];
    [addItemView addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"Name";
    }];
    [addItemView addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"Age";
    }];
    UIAlertAction *cancelButton = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
    UIAlertAction *okButton = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        NSArray *textFields = addItemView.textFields;
         UITextField *fieldOne = textFields[0];
         UITextField *fieldtwo = textFields[1];
        NSLog(@"Name is: %@\n Age os: %@",fieldOne.text,fieldtwo.text);
    }];
    
    
    [addItemView addAction:cancelButton];
    [addItemView addAction:okButton];
    [self presentViewController:addItemView animated:YES completion:nil];
}


-(void) showMessegeDialog
{
    //    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Change Background !" message:@"choose your background  color :) " preferredStyle: UIAlertControllerStyleAlert];
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Change Background !" message:@"choose your background  color :) " preferredStyle: UIAlertControllerStyleActionSheet];
    
    UIAlertAction *cancelButton = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
    
    UIAlertAction *redButton = [UIAlertAction actionWithTitle:@"red" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        self.view.backgroundColor = UIColor.redColor;
    }];
    UIAlertAction *yellowButton = [UIAlertAction actionWithTitle:@"Yellow" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        self.view.backgroundColor = UIColor.yellowColor;
    }];
    
    
    [alert addAction:redButton];
    [alert addAction:yellowButton];
    [alert addAction:cancelButton];
    [self presentViewController:alert animated:YES completion:nil];
}
@end
