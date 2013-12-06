//
//  DBManager.m
//  skcu1805_chapter6Block
//
//  Created by skcu1805 on 2013/12/4.
//  Copyright (c) 2013年 SKL. All rights reserved.
//

#import "DBManager.h"

static DBManager *manager;

@implementation DBManager

+ (id) instance {
    if (!manager) {
        manager = [self new];
        if (manager) {
            [manager setUserTable:[NSMutableSet new]];
            [manager setProductTable:[NSMutableSet new]];
        }
    }
    return manager;
}

- (BOOL) addData:(id) data talbe:(NSMutableSet *) set {
    NSUInteger count = set.count;
    [set addObject:data];
    return count < set.count;
}

- (BOOL) delData:(id) data talbe:(NSMutableSet *) set {
    NSUInteger count = set.count;
    [set removeObject:data];
    return count > set.count;
}

@end