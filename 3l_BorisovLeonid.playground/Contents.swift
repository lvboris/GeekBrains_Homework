import UIKit

//1. Описать несколько структур – любой легковой автомобиль и любой грузовик.
//2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
//3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
//4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
//5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.
//6. Вывести значения свойств экземпляров в консоль.

enum EngineState: String {
    case start = "заведен"
    case stop = "заглушен"
}

enum WindowState: String {
    case open = "открыты", close = "закрыты"
}

enum Trunk: String {
    case empty = "пустой", full = "полный"
}


struct PassengerCar {
    let manafacture: String
    let releaseDate: Int
    var bootVolume : Double {
        willSet {
            if (emptyTrunk == .empty) && (bootVolume > 0) && (bootVolume != 0) && (newValue < bootVolume) {
                let freeSpace = bootVolume - newValue
                print ("\(manafacture) имеет свободного места в багажнике: \(freeSpace)")
            } else {
                print("В \(manafacture) багажник полный")
            }
        }
    }
    var emptyTrunk: Trunk
    mutating func emptyTrunkState() {
        self.emptyTrunk = .empty
        print("В \(manafacture) багажник пустой")
    }
    
        var engineState: EngineState {
            willSet {
                if newValue == .start {
                print("\(manafacture) заведен")
            } else {
            print ("\(manafacture) заглушен")
                }
            }
        }
        
        var windwoState: WindowState {
            willSet {
                if newValue == .open {
                    print("В \(manafacture) окна открыты")
                } else {
                    print("В \(manafacture) окна закрыты")
                }
            }
        }
      
    
}

struct Truck {
    let manafacture: String
    let releaseDate: Int
    var bootVolume: Double {
        willSet {
            if (emptyTrunk == .empty) && (bootVolume > 0) && (bootVolume != 0) && (newValue < bootVolume) {
                let freeSpace = bootVolume - newValue
                print ("\(manafacture) имеет свободного места в кузове: \(freeSpace)")
            } else {
                print ("В \(manafacture) кузов полный")
            }
            
        }
    }
    
    var emptyTrunk: Trunk
    mutating func emptyTrunkState() {
        self.emptyTrunk = .empty
        print("В \(manafacture) багажник пустой")
    }
    
    var engineState: EngineState {
        willSet {
            if newValue == .start {
                print ("\(manafacture) заведен")
            } else {
                print ("\(manafacture) заглушен")
            }
        }
    }
    
    var windwoState: WindowState {
        willSet {
            if newValue == .close {
                print ("Окна закрыты")
            } else {
                print ("Окна открыты")
            }
        }
    }
}

//Машины
var car1 = PassengerCar(manafacture: "BMW", releaseDate: 1997, bootVolume: 340.0, emptyTrunk: .full, engineState: .start, windwoState: .close)
var car2 = PassengerCar(manafacture: "VW", releaseDate: 2005, bootVolume: 500.0, emptyTrunk: .empty, engineState: .stop, windwoState: .close)
var car3 = PassengerCar(manafacture: "Porsche", releaseDate: 2018, bootVolume: 40.0, emptyTrunk: .full, engineState: .start, windwoState: .open)

//Грузовики
var truck1 = Truck(manafacture: "Mercedes", releaseDate: 2010, bootVolume: 9000.0, emptyTrunk: .empty, engineState: .stop, windwoState: .close)
var truck2 = Truck(manafacture: "KamAZ", releaseDate: 1990, bootVolume: 6000.0, emptyTrunk: .full, engineState: .start, windwoState: .open)
var truck3 = Truck(manafacture: "Zil", releaseDate: 1970, bootVolume: 1000.0, emptyTrunk: .empty, engineState: .start, windwoState: .open)

//Изменения
car1.engineState = .stop
car1.bootVolume = 100.0
car2.windwoState = .open
car2.bootVolume = 263.0
car3.emptyTrunk = .empty
car3.bootVolume = 55.0
truck1.bootVolume = 8000.0
truck1.emptyTrunk = .full
truck2.engineState = .stop
truck2.bootVolume = 4000.0
truck3.bootVolume = 300.0
truck3.windwoState = .close


print("Производитель машины: \(car1.manafacture), выпущена в \(car1.releaseDate), вместимость багажника \(car1.bootVolume)кг, мотор \(car1.engineState.rawValue), окна \(car1.windwoState.rawValue)")
print("Производитель машины: \(car2.manafacture), выпущена в \(car2.releaseDate), вместимость багажника \(car2.bootVolume)кг, мотор \(car2.engineState.rawValue), окна \(car2.windwoState.rawValue)")
print("Производитель грузовика: \(truck1.manafacture), выпущена в \(truck1.releaseDate), вместимость багажника \(truck1.bootVolume)кг, мотор \(truck1.engineState.rawValue), окна \(truck1.windwoState.rawValue)")
print("Производитель грузовика: \(truck3.manafacture), выпущена в \(truck3.releaseDate), вместимость багажника \(truck3.bootVolume)кг, мотор \(truck3.engineState.rawValue), окна \(truck3.windwoState.rawValue)")
