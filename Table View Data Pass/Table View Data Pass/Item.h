//
//  Item.h
//  Table View Data Pass
//
//  Created by user on 11/11/18.
//  Copyright © 2018 shamit. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Item : NSObject

@property (strong,nonatomic) NSString *itemTitle;
@property (strong,nonatomic) NSString *itemType;
@property (strong,nonatomic)  NSString *itemPrice;
@property (strong,nonatomic) NSString *itemImageName;

@end

NS_ASSUME_NONNULL_END
