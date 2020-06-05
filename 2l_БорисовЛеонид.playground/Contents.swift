import UIKit

//1. Написать функцию, которая определяет, четное число или нет.

func evenOddArray (array: [Int]) {
    for sort in 0..<array.count {
        if array[sort] % 2 == 0 {
            print ("\(array[sort]) четное число")
        } else {
            print ("\(array[sort]) нечетное число")
        }
    }
}
let numbersArray = [53, 58, 2, 100, 35, 1025, 1]
evenOddArray(array: numbersArray)



//2. Написать функцию, которая определяет, делится ли число без остатка на 3.

func divisionForThree (array: [Int]){
    for sort in 0..<array.count {
        if array[sort] % 3 == 0 {
            print ("\(array[sort]) делится без остатка на 3")
        } else {
            print ("\(array[sort]) делится с остатка на 3")
        }
    }
}

let numberArray = [12, 33, 3, 55, 68, 99, 102, 43]
divisionForThree(array: numberArray)




//3. Создать возрастающий массив из 100 чисел. 4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

var fromOneToHundredArray = Array (1...100)
for (_, value) in fromOneToHundredArray.enumerated(){
    if value % 2 == 0 || value % 3 != 0 {
        fromOneToHundredArray.remove(at: fromOneToHundredArray.firstIndex(of:value)!)
    }
}
print(fromOneToHundredArray)





