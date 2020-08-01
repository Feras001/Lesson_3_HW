//
//  main.swift
//  Lesson_3_HW
//
//  Created by Feras Shaker on 27.07.2020.
//  Copyright © 2020 Feras Shaker. All rights reserved.
//

import Foundation

//1. Описать несколько структур – любой легковой автомобиль SportCar и любой грузовик TrunkCar.
//
//2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
//3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
//4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
//
//5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.
//
//6. Вывести значения свойств экземпляров в консоль.

enum engineState {
    case on, off
}

enum windowState {
    case open, close
}

enum trunkState {
    case full, empty
}

enum doorState {
    case open, close
}


struct SportCar {
    let brand: String
    let year: Int
    let trunkVolume: Int
    var doorState: doorState
        
        mutating func openDoor() {
        self.doorState = .open
        }
        mutating func closeDoor() {
            self.doorState = .close
    }
    var engineState: engineState {
        willSet {
            if newValue == .on {
                print("Двигатель включен")
            } else {
                print("Двигатель выключен")
            }
        }
    }
    var windowState: windowState {
        willSet {
            if newValue == .open {
                print("Окна открыты")
            } else {
                print("Окна закрыты")
            }
        }
    }
    var trunkState: trunkState {
        willSet {
            if newValue == .empty {
                print("Багажник пустой")
            }else {
                print("Багажник полный")
            }
        }
    }
    
    func printSportCar() {
        print("\(brand) year: \(year)")
    }
    
}

struct TrunkCar {
    let brand: String
    let year: Int
    let trunkVolume: Double
    var doorState: doorState
        
        mutating func openDoor() {
        self.doorState = .open
        }
        mutating func closeDoor() {
            self.doorState = .close
    }
   var engineState: engineState {
        willSet {
            if newValue == .on {
                print("Двигатель включен")
            } else {
                print("Двигатель выключен")
            }
        }
    }
    var windowState: windowState {
        willSet {
            if newValue == .open {
                print("Окна открыты")
            } else {
                print("Окна закрыты")
            }
        }
    }
    var trunkState: trunkState {
        willSet {
            if newValue == .empty {
                print("Багажник пустой")
            }else {
                print("Багажник полный")
            }
        }
    }

    func printTrunkCar() {
        print("\(brand) year: \(year)")
    }
    }



var ferrari = SportCar(brand: "Ferrari", year: 2019, trunkVolume: 240, doorState: .close, engineState: .off, windowState: .close, trunkState: .empty)
var gazel = TrunkCar(brand: "Gazel", year: 2012, trunkVolume: 9000, doorState: .open, engineState: .on, windowState: .open, trunkState: .full)

gazel.printTrunkCar()
ferrari.printSportCar()
ferrari.engineState = .on
gazel.windowState = .close
gazel.trunkState = .empty
ferrari.closeDoor()

struct getCar {
    var brand: String
    var year: Int
    var doorState: String
    var windowState: String
    
    init(brand: String, year: Int, doorState: String, windowState: String){
    self.brand = brand
    self.year = year
    self.doorState = doorState
    self.windowState = windowState
}
    func printGetCar() {
        print("Brand: \(self.brand); Year: \(self.year); DoorState: \(self.doorState); WindowState: \(self.windowState)")
    }
}

var porsche = getCar(brand: "Porsche", year: 2020, doorState: "close", windowState: "open")

print(porsche)

