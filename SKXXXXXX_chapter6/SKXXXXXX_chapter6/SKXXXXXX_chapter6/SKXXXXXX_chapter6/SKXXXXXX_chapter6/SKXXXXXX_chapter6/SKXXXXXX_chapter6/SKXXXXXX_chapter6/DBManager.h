//
//  DBManager.h
//  skcu1805_chapter6Block
//
//  Created by skcu1805 on 2013/12/4.
//  Copyright (c) 2013年 SKL. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DBManager : NSObject

@property (nonatomic, strong) NSMutableSet *UserTable;
@property (nonatomic, strong) NSMutableSet *ProductTable;

+ (id) instance;

- (BOOL) addData:(id) data talbe:(NSMutableSet *) set;
- (BOOL) delData:(id) data talbe:(NSMutableSet *) set;

@end
