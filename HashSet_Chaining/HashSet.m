//
//  HashSet.m
//  HashSet_Chaining
//
//  Created by Liu Linjie on 1/8/15.
//  Copyright (c) 2015 LL. All rights reserved.
//

#import "HashSet.h"
#import "Node.h"

#define M 11  // 默认表长度11
#define hashkey(value) @((value)%(M))   // hash函数取模

@interface HashSet()
/** 内部的散列表 */
@property (nonatomic, strong) NSMutableDictionary *hashTable;
@end

@implementation HashSet

+ (instancetype)hashSet
{
    return [[HashSet alloc] init];
}

- (instancetype)init
{
    if (self = [super init]) {
        // 实例化对象时初始化散列表
        self.hashTable = [NSMutableDictionary dictionaryWithCapacity:M];
    }
    return self;
}

/** 添加一个值到集合中 */
- (void)addValue:(int)value
{
    NSNumber *idx = hashkey(value);
    if (self.hashTable[idx]) {
        [self.hashTable[idx] addNodeWithValue:value];
    } else {
        self.hashTable[idx] = [Node nodeWithValue:value];
    }
}

/** 查找集合中是否包含某个值 */
- (BOOL)containsValue:(int)value
{
    return [self.hashTable[hashkey(value)] containsNodeWithValue:value];
}

/** 从集合中移除某个值 */
- (void)removeValue:(int)value
{
    Node *node = [self.hashTable[hashkey(value)] removeNodeWithValue:value];
    if (node) {
        self.hashTable[hashkey(value)] = node;
    } else {
        [self.hashTable removeObjectForKey:hashkey(value)];
    }
}

/** 添加一组值到集合中 */
- (void)addValues:(NSArray *)values
{
    for (NSNumber *value in values) {
        [self addValue:[value intValue]];
    }
}

/** 删除一组数值 */
- (void)removeValues:(NSArray *)values
{
    for (NSNumber *value in values) {
        [self removeValue:[value intValue]];
    }
}

/** 查看散列表 */
- (void)printHashTable
{
    NSLog(@"%@", self.hashTable);
}

@end

