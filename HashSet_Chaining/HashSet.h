//
//  HashSet.h
//  HashSet_Chaining
//
//  Created by Liu Linjie on 1/8/15.
//  Copyright (c) 2015 LL. All rights reserved.
//

#import <Foundation/Foundation.h>

// 题目：实现一个简单的存放int元素的散列集合(HashSet)，用拉链法来解决冲突。该散列集合(HashSet)的Hash函数可以是一个简单的取模操作即可。


/** 散列集合 */
@interface HashSet : NSObject

/** 创建一个散列集合，默认buckets数目为11 */
+ (instancetype)hashSet;

/** 添加一个值到集合中 */
- (void)addValue:(int)value;

/** 添加一组数值到集合中 */
- (void)addValues:(NSArray *)values;

/** 查找集合中是否包含某个值 */
- (BOOL)containsValue:(int)value;

/** 从集合中删除某个值 */
- (void)removeValue:(int)value;

/** 从集合中删除一组数值 */
- (void)removeValues:(NSArray *)values;

/** 查看散列表 */
- (void)printHashTable;

@end
