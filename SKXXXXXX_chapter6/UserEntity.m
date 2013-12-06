//
//  UserEntity.m
//  skcu1805_chapter6Block
//
//  Created by skcu1805 on 2013/12/4.
//  Copyright (c) 2013年 SKL. All rights reserved.
//

#import "UserEntity.h"

@implementation UserEntity

#pragma mark - Implement Methods
/* 1, 實做新增資料方法，並滿足：
    a, 得到一個新 UserEntity
    b, 必須先初始化 rs_Product
    C, 將新的 UserEntity 加到 DBManager 的 UserTable 中，並將成功回傳於 block 中
 */
// TODO
+(void)addDataWithCompletion:(void (^)(BOOL, id))completion
{
    UserEntity *user = [UserEntity new];
    user.rs_Product = [NSMutableSet new];
    DBManager *db = [DBManager instance];
    
    [db addData:user talbe:db.UserTable];
    
    if (completion) {
        completion(YES,  user);
    }
    
}
/* 2, 實做刪除資料方法，並滿足：
    a, 將自己從 DBManager 刪除，並將值帶給 block 中
*/
// TODO
-(void)delDataWithCompletion:(DBhander)completion
{
    
    DBManager *db = [DBManager instance];
    
    [db addData:self talbe:db.UserTable];
    if (completion) {
        completion(YES);
    }
   
}
/* 3, 實做更新資料方法，並滿足：
    a, 直接呼叫 block
 */
//TODO
-(void)updateDataWithCompletion:(void (^)(BOOL, id))completion
{
        completion(YES,self);
}
/* 4, 實做搜尋資料方法，並滿足：
    a, 取得 DBManager 中的 Table 資料
    b, 並用以下程式排序後回傳於 block 中
        NSSortDescriptor *nameDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"userId" ascending:YES];
        NSArray *results = [manager.UserTable sortedArrayUsingDescriptors:[NSArray arrayWithObject:nameDescriptor]];
 */
//TODO
 +(void)getDataResultsWithCompletion:(void (^)(NSArray *))completion
{
    DBManager *db = [DBManager instance];
    
    NSSortDescriptor *nameDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"userId" ascending:YES];
    NSArray *results = [db.UserTable sortedArrayUsingDescriptors:[NSArray arrayWithObject:nameDescriptor]];

    if(completion)
    {
        completion(results);
    }
}

#pragma mark - Implement Category Methods
/*
 5, 實作 Category 方法 
 */
//TODO addProduct
-(void) addProduct:(ProductEntity  *)product
{
    if (!_rs_Product) {
        [self setRs_Product:[NSMutableSet new]];
    }
    [_rs_Product addObject:product];
}
//TODO delProduct
-(void)delProduct:(ProductEntity *)product
{
    [_rs_Product removeObject:product];
}

#pragma mark - Description
- (NSString *) description {
    NSMutableString *str = [NSMutableString new];
    [str appendFormat:@"\n userId = %lu",_userId];
    [str appendFormat:@"\n name = %@",_name];
    [str appendFormat:@"\n sex = %@",_gender];
    [str appendFormat:@"\n age = %lu",_age];
    
    [str appendFormat:@"\n <-- Product start -->"];
    for (ProductEntity *pEntity in _rs_Product) {
        [str appendFormat:@"\n %@",pEntity];
    }
    [str appendFormat:@"\n <-- Product end -->"];
    
    return str;
}

@end