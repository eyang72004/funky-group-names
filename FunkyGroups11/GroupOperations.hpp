//
//  GroupOperations.hpp
//  FunkyGroups11
//
//  Created by Ethan Yang on 1/10/25.
//

#ifndef GroupOperations_hpp
#define GroupOperations_hpp

#include <stdio.h>
#include <vector>
#include <string>

class GroupOperations {
public:
    static int applyOperation(int element1, int element2, const std::string& operation, int modulo);
    
    static std::vector<std::vector<int>> generateCayleyTable(const std::vector<int>& elements, const std::string& operation, int modulo);
};





#endif /* GroupOperations_hpp */
