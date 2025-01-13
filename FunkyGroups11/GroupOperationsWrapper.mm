//
//  GroupOperationsWrapper.mm
//  FunkyGroups11
//
//  Created by Ethan Yang on 1/10/25.
//

#import <Foundation/Foundation.h>
#import "GroupOperations.hpp"
#include <vector>
#include <string>


@interface GroupOperationsWrapper : NSObject

+ (int)applyOperationWithElement1:(int)element1 element2:(int)element2 operation:(NSString *)operation modulo:(int)modulo;
+ (NSArray<NSArray<NSNumber *> *> *)generateCayleyTableWithElements:(NSArray<NSNumber *> *)elements operation:(NSString *)operation modulo:(int)modulo;

@end


@implementation GroupOperationsWrapper

+ (int)applyOperationWithElement1:(int)element1 element2:(int)element2 operation:(NSString *)operation modulo:(int)modulo {
    std::string op = [operation UTF8String];
    return GroupOperations::applyOperation(element1, element2, op, modulo);
}

+ (NSArray<NSArray<NSNumber *> *> *)generateCayleyTableWithElements:(NSArray<NSNumber *> *)elements operation:(NSString *)operation modulo:(int)modulo {
    std::vector<int> cElements;
    for (NSNumber *number in elements) {
        cElements.push_back([number intValue]);
    }
    
    std::vector<std::vector<int>> table = GroupOperations::generateCayleyTable(cElements, [operation UTF8String], modulo);
    
    NSMutableArray<NSMutableArray<NSNumber *> *> *result = [NSMutableArray array];
    for (const auto& row : table) {
        NSMutableArray<NSNumber *> *rowArray = [NSMutableArray array];
        for (int value : row) {
            [rowArray addObject:@(value)];
        }
        [result addObject:rowArray];
    }
    return result;
}


@end
