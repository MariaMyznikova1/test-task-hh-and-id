import UIKit

var str = "Hello, Lesha and Dimon!" // Вежливое приветствие проверяющих
print(str)

func generateArrays (numberOfArrays: Int) -> [[Int]] { // Входной параметр - это положительное целое число, выходной - массив массивов целых чисел
    var result = [[Int]]()
    
    if numberOfArrays <= 0 { // Проверка входного значения: если отрицательное, то шлем нахер
        return result
    }
    
    var uniqueValues = Array(1...numberOfArrays)
    
    for i in 0..<numberOfArrays {
        
        let idx = Int.random(in: 0..<uniqueValues.count)
        let arrayLength = uniqueValues.remove(at: idx)
        
        var internalArray = [Int]() // Определяем переменную внутреннего массива как целое число
        for _ in 0..<arrayLength {
            internalArray.append(Int.random(in: 0...100)) // Наполняем внутренние массивы рандомными целочисленными значениями от 0 до 100
        }
        
        if i % 2 == 0 { // Если порядковый номер массива нечетный, то сортируем массив по убыванию
            internalArray.sort(by: >)
        }
        else { // Если порядковый номер массива четный, то сортируем массив по возрастанию
            internalArray.sort()
        }

        result.append(internalArray) // Добавляем массивы в результат
    }
    
    return result
}

let x = generateArrays(numberOfArrays: 4) // Присваиваем константе x результат основной функции с количеством массивов

print(x) // Выводим массивы на экран для проверки
