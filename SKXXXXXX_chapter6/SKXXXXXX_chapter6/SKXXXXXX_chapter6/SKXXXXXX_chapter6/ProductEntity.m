//
//  ProductEntity.m
//  skcu1805_chapter6Block
//
//  Created by skcu1805 on 2013/12/4.
//  Copyright (c) 2013年 SKL. All rights reserved.
//

#import "ProductEntity.h"

@implementation ProductEntity

#pragma mark - Implement Methods
/* 1, 實做新增資料方法，並滿足：
    a, 得到一個新 ProductEntity
    b, 將新的 ProductEntity 加到 DBManager 的 UserTable 中，並將成功回傳於 block 中
 */
// TODO

/* 2, 實做刪除資料方法，並滿足：
    a, 將自己從 DBManager 刪除，並將值帶給 block 中
 */
// TODO

/* 3, 實做更新資料方法，並滿足：
    a, 直接呼叫 block
 */
//TODO

/* 4, 實做搜尋資料方法，並滿足：
    a, 取得 DBManager 中的 Table 資料
    b, 並用以下程式列序後回傳於 block 中
    NSSortDescriptor *nameDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"userId" ascending:YES];
    NSArray *results = [manager.UserTable sortedArrayUsingDescriptors:[NSArray arrayWithObject:nameDescriptor]];
 */
//TODO

#pragma mark - Description
- (NSString *) description {
    NSMutableString *str = [NSMutableString new];
    [str appendFormat:@"\n productId = %lu",_productId];
    [str appendFormat:@"\n name = %@",_name];
    [str appendFormat:@"\n price = %lu",_price];
    return str;
}

@end