//
//  Node.m
//  HashSet_Chaining
//
//  Created by Liu Linjie on 1/8/15.
//  Copyright (c) 2015 LL. All rights reserved.
//

#import "Node.h"

@implementation Node

/** 创建一个节点 */
+ (instancetype)nodeWithValue:(int)value
{
    Node *node = [[Node alloc] init];
    node.value = value;
    return node;
}


/** 插入一个值到当前链表的末尾。如果重复，就不插入 */
- (void)addNodeWithValue:(int)value
{
    if (value == self.value) {
        // 有重值，不添加
        return;
    }
    
    if (self.next) {
        [self.next addNodeWithValue:value];
    } else {
        // 到链表末尾了也没有重复值，添加
        self.next = [Node nodeWithValue:value];
    }
}


/** 查找链表中是否存在某个值 */
- (BOOL)containsNodeWithValue:(int)value
{
    if (value == self.value) {
        // 找到这个值
        return YES;
    }
    
    if (self.next) {
        return [self.next containsNodeWithValue:value];
    } else {
        // 到链表末尾了，不存在这个值
        return NO;
    }
}


/** 从链表中删除某个值 */
- (instancetype)removeNodeWithValue:(int)value
{
    // 如果删除的是链表的起始点
    if (value == self.value) {
        return self.next;
    }
    
    // 如果要删除的不是起始点
    Node *node = self;
    while (node.next) {
        if (value == node.next.value) {
            node.next = node.next.next;
            return self;
        }
        node = node.next;
    }
    return self;
}


/** 打印节点时，从它的值开始把后面的节点值都打印出来，以end结尾 */
- (NSString *)description
{
    NSMutableString *desc = [NSMutableString stringWithFormat:@"%d", self.value];
    Node *next = self.next;
    while (next) {
        [desc appendFormat:@" - %d", next.value];
        next = next.next;
    }
    [desc appendString:@" - end"];
    return desc;
}

@end

