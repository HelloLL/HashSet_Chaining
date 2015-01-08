//
//  Node.h
//  HashSet_Chaining
//
//  Created by Liu Linjie on 1/8/15.
//  Copyright (c) 2015 LL. All rights reserved.
//

#import <Foundation/Foundation.h>

/** 链表上的一个节点 */
@interface Node : NSObject

/** 节点储存的值 */
@property (nonatomic, assign) int value;

/** 下一个节点 */
@property (nonatomic, strong) Node *next;


/**
 *  创建一个节点
 */
+ (instancetype)nodeWithValue:(int)value;


/**
 *  在以当前节点开始的链表中，插入一个值。
 *  注：插入在链表尾部。如果链表中已经有相同的值了，就不再插入。
 */
- (void)addNodeWithValue:(int)value;


/**
 *  在以当前节点开始的链表中，查找一个值是否存在。
 */
- (BOOL)containsNodeWithValue:(int)value;


/**
 *  从以当前节点开始的链表中，删除一个值。
 *
 *  @param value 要删除的节点的值
 *  @return 返回删除完成后的链表的第一个节点指针
 */
- (instancetype)removeNodeWithValue:(int)value;

@end

