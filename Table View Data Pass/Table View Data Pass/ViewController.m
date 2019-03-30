//
//  ViewController.m
//  Table View Data Pass
//
//  Created by user on 11/11/18.
//  Copyright © 2018 shamit. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "Item.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _saveItemInfo = [[NSMutableArray alloc]init];
}


- (IBAction)SaveButton:(id)sender {
    
    Item *item = [[Item alloc]init];
    item.itemTitle = _inputTitleOutlet.text;
    item.itemType = _inputTypeOutlet.text;
    item.itemPrice = _inputPriceOutlet.text;
    item.itemImageName = _inputImageOutlet.text;
    _inputTitleOutlet.text = @" ";
    _inputTypeOutlet.text = @" ";
    _inputPriceOutlet.text = @" ";
    _inputImageOutlet.text = @" ";
    
    [_saveItemInfo addObject:item];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqualToString:@"goSecondSegue"])
    {
        SecondViewController *nextViewController = segue.destinationViewController;
        nextViewController.itemInfo = _saveItemInfo;
        NSLog(@"hola");
        
    }
    
}


@end
