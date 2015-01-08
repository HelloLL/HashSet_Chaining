//
//  main.m
//  HashSet_Chaining
//
//  Created by Liu Linjie on 1/8/15.
//  Copyright (c) 2015 LL. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HashSet.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        // 创建一个散列集合
        HashSet *hashset = [HashSet hashSet];
        
        // 插入数值
        [hashset addValue:12];
        [hashset addValues:@[@25, @14, @13, @12, @11, @22]];
        // 查看它的散列表
        [hashset printHashTable];
        
        // 查询
        NSLog(@"%d", [hashset containsValue:25]);   // YES
        NSLog(@"%d", [hashset containsValue:1]);    // NO
        
        // 删除数值
        [hashset removeValue:12];
        [hashset removeValues:@[@10, @11]];
        // 查看它的散列表
        [hashset printHashTable];

    }
    return 0;
}
