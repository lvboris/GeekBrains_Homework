import UIKit

//Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.
//Описать пару его наследников trunkCar и sportCar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.
//Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.
//В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.
//Создать несколько объектов каждого класса. Применить к ним различные действия.
//Вывести значения свойств экземпляров в консоль.

enum EngineState: String {
    case On = "заведен", Off = "заглушен"
}

enum Trunk: String {
    case empty = "пустой", full = "полный"
}

enum WindowsState: String {
    case open = "открыты", close = "закрыты"
}

enum SportMode: String {
    case On = "доступен", Off = "недоступен"
}

class Car {
    var manafacture: String
    var color: UIColor
    var engine: EngineState
    var windows: WindowsState
    var releaseYear: Int
    init(manafacture: String, color: UIColor, engine: EngineState, windows: WindowsState, releaseYear: Int) {
        self.manafacture = manafacture
        self.color = color
        self.engine = engine
        self.windows = windows
        self.releaseYear = releaseYear
    }
}

class trunkCar: Car {
    var trunkVolume: Trunk
    init(manufacture: String, color: UIColor, engine: EngineState, windows: WindowsState, realeaseYear: Int, trunkVolume: Trunk) {
        self.trunkVolume = trunkVolume
        super.init(manafacture: manufacture, color: color, engine: engine, windows: windows, releaseYear: realeaseYear)
    }
    func trunkFullOrEmpty() {
        if trunkVolume == .full {
        print ("Место закончилось")
    } else {
    print ("Пусто")
      }
     }
}

    class sportCar: Car {
        var sport: SportMode
        init(manafacture: String, color: UIColor, engine: EngineState, windows: WindowsState, releaseYear: Int, sportMode: SportMode) {
            self.sport = sportMode
            super.init(manafacture: manafacture, color: color, engine: engine, windows: windows, releaseYear: releaseYear)
        }
        func sportCarEdition() {
            if sport == .On {
                print("Спорт режим доступен")
            } else {
                print("Спорт режим недоступен")
            }
        }
}

let speedyCar = sportCar(manafacture: "BMW", color: UIColor.blue, engine: .Off, windows: .close, releaseYear: 2020, sportMode: .On)
let trunkOverLoadTrunkCar = trunkCar(manufacture: "Kia", color: UIColor.black, engine: .On, windows: .open, realeaseYear: 2010, trunkVolume: .full)

print("Производство: \(speedyCar.manafacture), Цвет \(speedyCar.color), Мотор \(speedyCar.engine.rawValue), Окна \(speedyCar.windows.rawValue), Год производства \(speedyCar.releaseYear), Спорт режим \(speedyCar.sport.rawValue)")
print("Производство: \(trunkOverLoadTrunkCar.manafacture), Цвет \(trunkOverLoadTrunkCar.color), Мотор \(trunkOverLoadTrunkCar.engine.rawValue), Окна \(trunkOverLoadTrunkCar.windows.rawValue), Год производства \(trunkOverLoadTrunkCar.releaseYear), Багажник \(trunkOverLoadTrunkCar.trunkVolume.rawValue)")

