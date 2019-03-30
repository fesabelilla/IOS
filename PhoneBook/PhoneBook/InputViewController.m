//
//  InputViewController.m
//  PhoneBook
//
//  Created by Debashis Ray on 11/14/18.
//  Copyright © 2018 Debashis Ray. All rights reserved.
//

#import "InputViewController.h"
#import "SecondViewController.h"
#import "PhoneBook.h"



@interface InputViewController ()

@end

@implementation InputViewController

static int restrictAllocation = -1;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if(restrictAllocation < 0 )
    {
        _phoneBook = [[NSMutableArray alloc]init];
        restrictAllocation = 10;
        
    }
    _inputNameOutlet.text = @" ";
    _inputNumberOutlet.text = @" ";
    _inputAddressOutlet.text= @" ";
    _inputEmailOutlet.text=@" ";
    _inputTelephoneOutlet.text= @" ";
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation

*/
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if([segue.identifier isEqualToString:@"saveIdentifier"])
    {
        
        SecondViewController *secondNextViewController;
        secondNextViewController.phoneBook = _phoneBook;
         [secondNextViewController.tableOutlet reloadData];
    }
}
- (IBAction)saveButton:(id)sender {
    
    if( [_inputNameOutlet.text  isEqual: @" "] && [_inputNumberOutlet.text isEqual: @" "])
    {
        _inputNameOutlet.backgroundColor = [UIColor redColor ];
        _inputNumberOutlet.backgroundColor = [UIColor redColor ];
    }
    else if( [_inputNameOutlet.text  isEqual: @" "] )
    {
        _inputNameOutlet.backgroundColor = [UIColor redColor ];
         _inputNumberOutlet.backgroundColor = [UIColor whiteColor ];
    }
    else if([_inputNumberOutlet.text isEqual: @" "])
    {
        _inputNameOutlet.backgroundColor = [UIColor whiteColor ];
        _inputNumberOutlet.backgroundColor = [UIColor redColor ];
    }
    else{
        
        PhoneBook *phonebooks = [[PhoneBook alloc]init];
        phonebooks.names = _inputNameOutlet.text;
        phonebooks.number = _inputNumberOutlet.text;
        phonebooks.address = _inputAddressOutlet.text;
        phonebooks.email = _inputEmailOutlet.text;
        phonebooks.telePhoneNo = _inputTelephoneOutlet.text;
        [_phoneBook addObject:phonebooks];
        
       // NSUserDefaults *storage = [NSUserDefaults standardUserDefaults];
       // [storage setObject:_phoneBook forKey:@"phonebook"];
        //[storage synchronize];
        
        _inputNameOutlet.text = @" ";
        _inputNumberOutlet.text = @" ";
        _inputAddressOutlet.text= @" ";
        _inputEmailOutlet.text=@" ";
        _inputTelephoneOutlet.text= @" ";
        _inputNameOutlet.backgroundColor = [UIColor whiteColor ];
        _inputNumberOutlet.backgroundColor = [UIColor whiteColor ];
        SecondViewController *secondNextViewController;
        secondNextViewController.phoneBook = _phoneBook;
        [secondNextViewController.tableOutlet reloadData];
        
    }
    
}

- (IBAction)doneButton:(id)sender {
    
//    InputViewController *input = [[InputViewController alloc]init];
//    [input.presentingViewController dismissViewControllerAnimated:YES completion:nil];
    UIStoryboard *mainStoryBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    SecondViewController *nextViewController = [mainStoryBoard instantiateViewControllerWithIdentifier:@"SecondViewIdentifier"];
    
    nextViewController.phoneBook = _phoneBook;
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    [self.navigationController pushViewController:nextViewController animated:YES];
    
}
@end
