//
//  ProductEntity.h
//  skcu1805_chapter6Block
//
//  Created by skcu1805 on 2013/12/4.
//  Copyright (c) 2013年 SKL. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DBManagerObject.h"

@interface ProductEntity : DBManagerObject

@property (nonatomic, assign) NSUInteger productId;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSUInteger price;

@end
