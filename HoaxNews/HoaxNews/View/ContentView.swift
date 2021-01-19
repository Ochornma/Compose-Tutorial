//
//  ContentView.swift
//  HoaxNews
//
//  Created by Promise Ochornma on 17/01/2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManger()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts){post in
                NavigationLink( destination: DetailView(url: post.url)){
                    HStack {
                        Text("\(post.points)")
                        Text(post.title)
                    }
                }
                
            }
            .navigationBarHidden(true)
        }
        .onAppear(perform: {
            networkManager.fetch()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



/*let posts = [
 Post(id: "1", title: "Hello"),
 Post(id: "2", title: "Helloo"),
 Post(id: "3", title: "Helloo")
 ]*/
