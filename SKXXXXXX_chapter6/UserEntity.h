//
//  UserEntity.h
//  skcu1805_chapter6Block
//
//  Created by skcu1805 on 2013/12/4.
//  Copyright (c) 2013年 SKL. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DBManagerObject.h"
#import "ProductEntity.h"

@interface UserEntity : DBManagerObject<DBManagerObjectProcess>

@property (nonatomic, assign) NSUInteger userId;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSNumber *gender;
@property (nonatomic, assign) NSUInteger age;

@property (nonatomic, strong) NSMutableSet *rs_Product;

@end

/* 1, 加入一個 Category (AddProduct) 並加入兩個方法
 a, addProduct 加入 product 於 rs_Product
 b, delProduct 刪除 rs_Product 中的資料
 */
// TODO
@interface UserEntity (AddProduct)
-(void) addProduct:(ProductEntity *)product;
-(void) delProduct:(ProductEntity *)product;
@end

