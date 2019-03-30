//
//  main.m
//  NSMutableDictionary
//
//  Created by MACLAB on 13/11/18.
//  Copyright © 2018 pro. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    NSMutableDictionary *list = [[NSMutableDictionary alloc]init];
    
    [list setObject:@"A" forKey:@"1"];
    [list setObject:@"B" forKey:@"2"];
    [list setObject:@"C" forKey:@"3"];
    
    NSLog(@"%@",list);
    NSLog(@"%@",[list valueForKey:@"3"]);
    NSLog(@"%@",[list allKeys]);
    NSLog(@"%@",[list allValues]);
    
    
    return 0;
}
