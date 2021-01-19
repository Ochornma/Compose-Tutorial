//
//  NetworkManager.swift
//  HoaxNews
//
//  Created by Promise Ochornma on 17/01/2021.
//

import Foundation

class NetworkManger: ObservableObject {
    
   @Published var posts = [Post]()
    
    func fetch() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url){ [self] (data, response, error) in
                if error == nil{
                    let decoder  = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                posts = results.hits
                            }
                           
                        } catch  {
                            print(error.localizedDescription)
                        }
                        
                    }
                  
                }
            }
            task.resume()
        }
    }
}
