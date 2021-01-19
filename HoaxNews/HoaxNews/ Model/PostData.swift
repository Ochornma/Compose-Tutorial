//
//  PostData.swift
//  HoaxNews
//
//  Created by Promise Ochornma on 17/01/2021.
//

import Foundation
struct Results: Decodable{
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String{
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
