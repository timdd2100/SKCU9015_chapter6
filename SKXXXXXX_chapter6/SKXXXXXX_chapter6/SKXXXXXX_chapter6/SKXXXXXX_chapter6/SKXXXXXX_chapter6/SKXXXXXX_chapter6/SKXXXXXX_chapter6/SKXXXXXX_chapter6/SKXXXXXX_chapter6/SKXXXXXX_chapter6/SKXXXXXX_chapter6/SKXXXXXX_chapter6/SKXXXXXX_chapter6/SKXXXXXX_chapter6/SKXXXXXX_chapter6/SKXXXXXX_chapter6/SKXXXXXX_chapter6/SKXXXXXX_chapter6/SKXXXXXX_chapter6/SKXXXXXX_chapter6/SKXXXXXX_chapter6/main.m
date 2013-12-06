//
//  main.m
//  SKXXXXXX_chapter6
//
//  Created by skcu1805 on 2013/12/4.
//  Copyright (c) 2013年 SKL. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserEntity.h"
#import "ProductEntity.h"
#import "DBManagerObject.h"

typedef void (^completion)(BOOL success);

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        /*
         1, 定義 兩個 UserEntity 參考 ，三個 ProductEntity 參考 並可傳入 block 中
         */
        //TODO

        NSLog(@"step 1 add data and update data");

        /* 
         2, 呼叫加入資料，並包含更新資料的方法
            a, 資料如下
         
            其中 product 1
            [p1 setProductId:11];
            [p1 setName:@"Mac Book Pro"];
            [p1 setPrice:42000];
         
            其中 product 2
            [p2 setProductId:12];
            [p2 setName:@"Mac Book Air"];
            [p2 setPrice:32000];
         
            其中 product 3
            [p3 setProductId:13];
            [p3 setName:@"Mac Pro"];
            [p3 setPrice:95000];
         
         
            其中 user 1
            [u1 setUserId:1];
            [u1 setName:@"Maggie"];
            [u1 setGender:[NSNumber numberWithBool:YES]];
            [u1 setAge:16];
            [u1 addProduct:p2];
         
            其中 user 2
            [u2 setUserId:1];
            [u2 setName:@"Darren"];
            [u2 setGender:[NSNumber numberWithBool:NO]];
            [u2 setAge:18];
            [u2 addProduct:p1];
            [u2 addProduct:p2];
            [u2 addProduct:p3];
         
            b, 當新增資料 block 結果回傳為 success 時 才能做 update 的動作
            C, 當更新資料 block 結果回傳為 success 時 印出結果，程式碼如下
            NSLog(@"update %@ success",NSStringFromClass([p1 class]));
         */
        //TODO
        
        NSLog(@"step 2 query data");

        /*
         3, 呼叫 User 和 Product 中的 搜尋結果
            a, 利用 for 迴圈將其結果印出
         */
        //TODO

        NSLog(@"step 3 delete user");
        
        /*
         4, 呼叫刪除 u1 這個 User 資料
            a, 成功刪除後，用第3題方式印出
         */
        // TODO
        
        NSLog(@"step 4 delete product");
        
        /*
         5, 呼叫刪除 p1 這個 Product 資料
            a, 先將 p1 從  u2 中移除 [u2 delProduct:p1]
            b, 成功刪除後，用第3題方式印出
         */
        //TODO

    }
    return 0;
}
