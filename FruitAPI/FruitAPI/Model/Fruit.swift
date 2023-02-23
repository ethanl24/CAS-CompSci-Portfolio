//
//  Fruit.swift
//  FruitAPI
//
//  Created by Ethan Lee on 1/20/23.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let fruits = try? JSONDecoder().decode(Fruits.self, from: jsonData)

//let sampleFruit = Fruit(genus: "genus", name: "name", id: Nutritions(carbohydrates: 10.0, protein: 1.0, fat: 2.0, calories: 50, sugar: 3.0), family: 1, order: "family", nutritions: "order")

import Foundation

// MARK: - Fruit
struct Fruit: Codable {
    let genus, name: String
    let id: Int
    let family, order: String
    let nutritions: Nutritions
}

// MARK: - Nutritions
struct Nutritions: Codable {
    let carbohydrates, protein, fat: Double
    let calories: Int
    let sugar: Double
}

//typealias Fruits = [Fruit]
