//
//  IMDBModel.swift
//  IMDBApp
//
//  Created by Ethan Lee on 1/31/23.
//

import Foundation


func loadData( searchTerm:String, completion:@escaping (IMDBSearch) -> Void){
    let urlEncodedSearchTerm = searchTerm.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed)!
    var request = URLRequest(url: URL(string: "https://imdb-api.com/en/API/SearchMovie/k_k1txs72n/" + urlEncodedSearchTerm)!)
    request.httpMethod = "GET"

    let task = URLSession.shared.dataTask(with: request) { data, response, error in
        guard let data = data else {
            print(String(describing: error))
            return
        }
        let movies = try! JSONDecoder().decode(IMDBSearch.self, from: data)

        completion(movies)
    }

    task.resume()

}
