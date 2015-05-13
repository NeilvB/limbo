//
//  LimbModel.swift
//  Limbo
//
//  Created by Neil van Beinum on 08/05/2015.
//  Copyright (c) 2015 Neil van Beinum. All rights reserved.
//

import Foundation

class LimboModel {
    let limbs : [String] = ["Right Hand", "Left Hand", "Right Foot", "Left Foot"]
    var limbPatternLength : Int
    
    init(limbPatternLength: Int) {
        self.limbPatternLength = limbPatternLength
    }
    
    func limbPattern() -> [String] {
        if (limbPatternLength == 0) {
            return []
        }
        
        var pattern = [String]()
        
        for index in 0...limbPatternLength - 1 {
            pattern.append(nextLimb())
        }
        
        return pattern
    }
    
    private
    
    func nextLimb() -> String {
        return sorted(limbs) {_, _ in arc4random() % 2 == 0}.first!
    }
}