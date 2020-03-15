//
//  wage.swift
//  windowApp
//
//  Created by hima attalla on 9/22/19.
//  Copyright © 2019 ahmed attalla. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double)-> Int {
        return Int(ceil(price/wage))
    }
}
