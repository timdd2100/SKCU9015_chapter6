//
//  DBManagerObject.h
//  skcu1805_chapter6Block
//
//  Created by skcu1805 on 2013/12/4.
//  Copyright (c) 2013年 SKL. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DBManager.h"

/* 1, 定義一個 void block 變數 , 其參數為 BOOL success */
// TODO
typedef void (^DBhander)(BOOL success);


@protocol DBManagerObjectProcess <NSObject>

@optional

/* 2, 定義新增資料 static 方法 addDataWithCompletion:(?) completion; 其中「?」為 void block 參數：BOOL success, id entity */
// TODO
+(BOOL)addDataWithCompletion:(void(^)(BOOL success ,id entity))completion;

/* 3, 定義刪除資料 instance 方法 delDataWithCompletion:(?) completion; 其中「?」第1題 所定義參數 */
// TODO
-(BOOL)delDataWithCompletion:(DBhander)completion;
/* 4, 定義修改資料 instance 方法 updateDataWithCompletion:(?) completion; 其中「?」第1題 所定義參數 */
// TODO
-(BOOL)updateDataWithCompletion:(DBhander)completion;
/* 4, 定義搜尋資料 static 方法 getDataResultsWithCompletion:(?) completion; 其中「?」為 void block 參數：NSArray *results */
// TODO
+(NSArray *)getDataResultsWithCompletion:(void(^)(NSArray *results))completion;
@end

@interface DBManagerObject : NSObject <DBManagerObjectProcess>

@end