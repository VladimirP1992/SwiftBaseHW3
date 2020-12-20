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
    var isEngineRunning: Bool = false
    var isWindowsOpened: Bool = false
    var currentLoad: Double = 0.0
    
    mutating func actionToEngine(action: EngineActions) {
        switch action {
        case .start:
            isEngineRunning = true
        case .stop:
            isEngineRunning = false
        }
    }
    
    mutating func actionToWindows(action: WindowsActions) {
        switch action {
        case .open:
            isWindowsOpened = true
        case .close:
            isWindowsOpened = false
        }
    }
    
    mutating func actionToTrunk(action: LoadingActions) {
        switch action {
        case .add(weight: let weight):
            if (currentLoad + weight) > trunkVolume {
                print("Cars trunk hasn't enough of free space!")
            }
            else {
                currentLoad += weight
            }
        case .remove(weight: let weight):
            if(currentLoad - weight) < 0 {
                currentLoad = 0
            }
            else {
                currentLoad -= weight
            }
        }
    }
    
    func getStatus() {
        print("Car  specification:\n model = \(model), year = \(year), trunkVolume = \(trunkVolume)")
        print("Car status:\n engine is running = \(isEngineRunning), windows are opened = \(isWindowsOpened), current load = \(currentLoad)")
    }
}

var sportCar = Car(model: "Ferrari", year: 2018, trunkVolume: 30)
var trunkCar = Car(model: "Ford", year: 1996, trunkVolume: 400, currentLoad: 300)

sportCar.actionToTrunk(action: .add(weight: 20))
sportCar.actionToTrunk(action: .add(weight: 20))
sportCar.actionToEngine(action: .start)

trunkCar.actionToTrunk(action: .remove(weight: 600))
trunkCar.actionToWindows(action: .open)

sportCar.getStatus()
trunkCar.getStatus()
