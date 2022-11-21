//
//  main.swift
//  Properties
//
//  Created by Pavel Michka on 21.11.2022.
//
import Foundation
/* Свойства
Задание 1

1) Создайте класс RandomNumberGenerator, которы будет возвращать случайно сгенерированное число. Его инициализатор должен принимать свойства min и max, ограничивающие диапазон возможных значений сверху и снизу (максимальное и минимальное значения). Так же у класса должен быть метод getNumber(), возвращающий случайное целое число (из диапазона min...max).
2) Создайте структуру Employee, содержащее три свойства:

firstName — имя работника
secondName — фамилия работника
salary — заработная плата
Типы данных свойств определите самостоятельно
3) Создайте два массива типа [String] каждый. Первый должен содержать 5 вариантов имен, а второй — пять вариантов фамилий.
4) Создайте экземпляр типа Employee. Значения имени и фамилии должны браться случайным образом из созданных в пункте 3 массивов. Значение заработной платы должно быть случайным целым числом в диапазоне от 20000 до 100000. Используйте созданный в шаге 1) класс RandomNumberGenerator.
*/
class RandomNumberGenerator {
    var min: Int
    var max: Int
    
    init(minNumber min: Int, maxNumver max: Int) {
        self.min = min
        self.max = max
    }
    func getNumber() -> Int {
        Int.random(in: min...max)
    }
}

struct Employee {
    var firstName: String
    var secondName: String
    var salary: Int
}
var arrayFirstName = ["Sergey", "Pavel", "Ivan", "Petr", "Hasbik"]
var arraySecondName = ["Ivanov", "Michka", "Petrov", "Sidorov", "Lastochkin"]

let employee2 = Employee(firstName: arrayFirstName.randomElement()!, secondName: arraySecondName.randomElement()!, salary: RandomNumberGenerator(minNumber: 20000, maxNumver: 100000).getNumber())

let randomFirstName = arrayFirstName.randomElement()!
let randomSecondName = arraySecondName.randomElement()!
let randomSalary = RandomNumberGenerator(minNumber: 20000, maxNumver: 100000).getNumber()
let employee1 = Employee(firstName: randomFirstName, secondName: randomSecondName, salary: randomSalary)
