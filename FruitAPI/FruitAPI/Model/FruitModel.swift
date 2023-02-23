//
//  FruitModel.swift
//  FruitAPI
//
//  Created by Ethan Lee on 1/20/23.
//

import Foundation

let url = "https://fruityvice.com/api/fruit/all"

func loadData(){
    let apiURL = URL(string: url)!
    let request = URLRequest(url: apiURL)
    let task = URLSession.shared.dataTask(with: request) { data, response, error in do{
        if let data = data {

            let dataString = String(data: data, encoding: .utf8)!
            print("----------------------")
            print(dataString)

            let Fruit = try JSONDecoder().decode([Fruit].self, from: data)
            print(Fruit)

        }
    } catch{
        print(error)
    }
}
    task.resume()
}

func loadFruit(completion:@escaping ([Fruit]) -> Void){
    let apiURL = URL(string: url)!
    let request = URLRequest(url: apiURL)
    let task = URLSession.shared.dataTask(with: request) { data, response, error in do{
        if let data = data {

            let dataString = String(data: data, encoding: .utf8)!
            print("----------------------")
            print(dataString)

            let fruits = try JSONDecoder().decode([Fruit].self, from: data)
            print(fruits)

            completion(fruits)

        }
    } catch{
        print(error)
    }
}
    task.resume()
}

