import Foundation

// Решите квадратное уровнение

var a: Float = 5.0
var b: Float = 14.0
var c: Float = 6.0
var x1: Float = 0.0
var x2: Float = 0.0

var d = pow (b,2)-4*a*c

if (d<0) {
    print ("Корней нет")
}
if (d==0) {
    x1 = (-b+sqrt(d))/(2*a)
}
if (d>0) {
    x1 = (-b+sqrt(d))/(2*a)
    x2 = (-b-sqrt(d))/(2*a)
}


// Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.

var e: Float = 8
var f: Float = 9
// площадь

var S: Float = e*f/2


// Периметр

var P = e+f+G


// гипотенуза

var G: Float = sqrt(pow(e,2) + pow(f,2))




 //Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.

var sum: Float = 100000
var percent: Float = 5.5
percent = percent/100

var first_year = sum + (sum * percent)
var second_year = first_year + (sum * percent)
var third_year = second_year + (sum * percent)
var fourth_year = third_year + (sum * percent)
var fifth_year = fourth_year + (sum * percent)

print("Сумма вклада через пять лет: \(fifth_year)")
