import UIKit
//1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.
//2. Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей)
//3. Создать два класса, имплементирующих протокол «Car» - trunkCar и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.
//4. Для каждого класса написать расширение, имплементирующее протокол CustomStringConvertible.
//5. Создать несколько объектов каждого класса. Применить к ним различные действия
//6. Вывести сами объекты в консоль.
enum Windows{
    case open
    case closed
}
enum Engine{
    case on
    case off
}
enum Nitro{
    case nitroOn
    case nitroOff
}
enum Luggage{
    case trunkIsFull
    case TrunkIsEmpty
}
protocol Car {
    var brand: String {get}
    var release: Int {get}
    var engineState: Engine {get set}
    var windowsState: Windows {get set}
}
extension Car {
    mutating func changeEngineState(engineState: Engine){
        self.engineState = engineState
    }
    mutating func chageWindowsState(windowsState: Windows){
        self.windowsState = windowsState
    }
}
class basicCar: Car{
    var brand: String
    var release: Int
    var engineState: Engine = .off
    var windowsState: Windows = .closed
    init(brand: String, release: Int) {
        self.brand = brand
        self.release = release
    }
}
class sportCar: basicCar, CustomStringConvertible{
    var nitroState: Nitro = .nitroOff
    var description: String{
        return "engine is \(engineState), windows is \(windowsState), nitro is \(nitroState), release date is \(release)"
    }
}
class trunkCar: basicCar, CustomStringConvertible{
    var trunkState: Luggage = .TrunkIsEmpty
    var description: String{
        return "engine is \(engineState), windows is \(windowsState), trunk is \(trunkState), release date is \(release)"
    }
}
var bmw = sportCar(brand: "BMW", release: 2019)
var uaz = trunkCar(brand: "УАЗ", release: 2005)
bmw.changeEngineState(engineState: .on)
bmw.nitroState = .nitroOn
uaz.chageWindowsState(windowsState: .open)
uaz.trunkState = .trunkIsFull
print(bmw.description)
print(uaz.description)
