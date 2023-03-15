//
//  Stack.swift
//  Assignment-Day1
//
//  Created by BKS-GGS on 09/01/23.
//

import Foundation

struct Stack{
    
    var valuesInStack : [Int] = []
    
    mutating func itemPush(n:Int){
        valuesInStack.insert(n, at: 0)
    }
    
    mutating func itemPop(){
        if valuesInStack.isEmpty{
            return
        }
        valuesInStack.removeFirst()
    }
    
    func peek() -> Int?{
        return valuesInStack.first
    }
}
