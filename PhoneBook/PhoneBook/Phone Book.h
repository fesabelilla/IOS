//
//  Phone Book.h
//  PhoneBook
//
//  Created by Debashis Ray on 11/14/18.
//  Copyright © 2018 Debashis Ray. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Phone_Book : NSObject

@property (strong,nonatomic) NSString *name;
@property (strong,nonatomic) NSString *phoneNumber;
@property (strong,nonatomic) NSString *address;
@property (strong,nonatomic) NSString *email;
@property (strong,nonatomic) NSString *telePhoneNo;

@end

NS_ASSUME_NONNULL_END
