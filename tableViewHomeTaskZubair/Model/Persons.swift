//
//  Persons.swift
//  tableViewHomeTaskZubair
//
//  Created by Байсаев Зубайр on 19.10.2022.
//

import Foundation

struct Persons {
    let name: String
    let email: String
    let number: Int

    static func getNames() -> [Persons] {
        [
        Persons(name: "John", email: "Constantine@mail.ru", number: 000),
        Persons(name: "Sam", email: "Winchester@mail.ru", number: 111),
        Persons(name: "Sarah", email: "Connor@mail.ru", number: 222),
        Persons(name: "Jessie", email: "Pinkman@mail.ru", number: 333),
        Persons(name: "Walter", email: "Heisenberg@mail.ru", number: 444)

        ]
    }
}
