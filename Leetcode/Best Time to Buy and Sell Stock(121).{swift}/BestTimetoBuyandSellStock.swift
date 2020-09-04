//
//  File.swift
//  SwiftAlgorithmsDataStructures
//
//  Created by WendaLi on 2020-06-20.
//  Copyright © 2020 WendaLi. All rights reserved.
//

import Foundation
 
class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count >= 2 else {return 0}
 
        var price = prices[0]
        var maxPrice = 0
        for i in 1..<prices.count {
            maxPrice = max(maxPrice, prices[i] - price)
            price = min(price, prices[i])
        }
        return maxPrice
    }
}
