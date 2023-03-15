//
//  Queue.swift
//  Assignment-Day1
//
//  Created by BKS-GGS on 09/01/23.
//

import Foundation

struct Queue{
    
    var valuesInQueue : [Int] = []
    
    mutating func itemEnqueue(n:Int){
        
        valuesInQueue.append(n)
        
    }
    
    mutating func itemDequeue(){
        
        if(valuesInQueue.isEmpty){
            return
        }
        valuesInQueue.removeFirst()
    }
    
    func getFront() -> Int?{
        return valuesInQueue.first
    }
    
    func getRear() -> Int?{
        return valuesInQueue.last
    }
}
