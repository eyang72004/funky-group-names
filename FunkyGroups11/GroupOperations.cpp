//
//  GroupOperations.cpp
//  FunkyGroups11
//
//  Created by Ethan Yang on 1/10/25.
//

#include "GroupOperations.hpp"

int GroupOperations::applyOperation(int element1, int element2, const std::string &operation, int modulo) {
    if (operation == "add") {
        return (element1 + element2) % modulo;
    } else if (operation == "multiply") {
        return (element1 * element2) % modulo;
    }
    return -1;
}

std::vector<std::vector<int>> GroupOperations::generateCayleyTable(const std::vector<int>& elements, const std::string& operation, int modulo) {
    std::vector<std::vector<int>> table;
    
    for (int i = 0; i < elements.size(); i++) {
        std::vector<int> row;
        for (int j = 0; j < elements.size(); j++) {
            int result = applyOperation(elements[i], elements[j], operation, modulo);
            row.push_back(result);
        }
        table.push_back(row);
    }
    return table;
}
