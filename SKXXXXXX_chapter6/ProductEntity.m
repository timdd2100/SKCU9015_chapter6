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
+(void)addDataWithCompletion:(void (^)(BOOL, id))completion
{
    ProductEntity *product = [ProductEntity new];
    DBManager *db = [DBManager instance];
    
    [db addData:product talbe:db.ProductTable];
    
    if(completion)
    {
        completion(YES, product);
    }
}
/* 2, 實做刪除資料方法，並滿足：
 a, 將自己從 DBManager 刪除，並將值帶給 block 中
 */
// TODO
-(void)delDataWithCompletion:(DBhander)completion
{
    DBManager *db = [DBManager instance];
    
    [db delData:self talbe:db.ProductTable];
    
    if(completion)
    {
        completion(YES);
    }
}
/* 3, 實做更新資料方法，並滿足：
 a, 直接呼叫 block
 */
//TODO
-(void)updateDataWithCompletion:(void (^)(BOOL, id))completion
{
    completion(YES, self);
}


/* 4, 實做搜尋資料方法，並滿足：
 a, 取得 DBManager 中的 Table 資料
 b, 並用以下程式列序後回傳於 block 中
 NSSortDescriptor *nameDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"userId" ascending:YES];
 NSArray *results = [manager.UserTable sortedArrayUsingDescriptors:[NSArray arrayWithObject:nameDescriptor]];
 */
//TODO
+(void)getDataResultsWithCompletion:(void (^)(NSArray *))completion
{
    DBManager *db = [DBManager instance];
    NSSortDescriptor *nameDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"productId" ascending:YES];
    NSArray *results = [db.ProductTable sortedArrayUsingDescriptors:[NSArray arrayWithObject:nameDescriptor]];
    
    if (completion) {
        completion(results);
    }
}


#pragma mark - Description
- (NSString *) description {
    NSMutableString *str = [NSMutableString new];
    [str appendFormat:@"\n productId = %lu",_productId];
    [str appendFormat:@"\n name = %@",_name];
    [str appendFormat:@"\n price = %lu",_price];
    return str;
}

@end