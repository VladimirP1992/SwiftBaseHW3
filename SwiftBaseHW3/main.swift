//
//  main.swift
//  SwiftBaseHW3
//
//  Created by Владимир Поливников on 20.12.2020.
//

import Foundation

enum EngineActions {
    case start, stop
}

enum WindowsActions {
    case open, close
}

enum LoadingActions {
    case add(weight: Double)
    case remove(weight: Double)
}

//The only structure because there are no differences between SportCar and TrunkCar in the home work description.
struct Car {
    let model: String
    let year: Int
    let trunkVolume: Double
    var isEngineRunning: Bool
    var isWindowsOpened: Bool
    var currentLoad: Double
    
    mutating func actionToEngine(action: EngineActions) {
        
    }
    
    mutating func actionToWindows(action: WindowsActions) {
        
    }
    
    mutating func actionToTrunk(action: LoadingActions) {
        
    }
}

