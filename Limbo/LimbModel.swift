//
//  LimbModel.swift
//  Limbo
//
//  Created by Neil van Beinum on 08/05/2015.
//  Copyright (c) 2015 Neil van Beinum. All rights reserved.
//

import Foundation

class LimbModel {
    let limbs = ["Right Hand", "Left Hand", "Right Foot", "Left Foot"]
    
    func limbPattern() -> [String] {
        var pattern = [String]()
        
        for index in 1...4 {
            pattern.append(nextLimb())
        }
        
        return pattern
    }
    
    private
    
    func nextLimb() -> String {
        return sorted(limbs) {_, _ in arc4random() % 2 == 0}.first!
    }
}