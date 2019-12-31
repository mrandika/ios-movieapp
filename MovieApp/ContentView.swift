//
//  ContentView.swift
//  MovieApp
//
//  Created by Andika on 31/12/19.
//  Copyright © 2019 Andika. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var moviesData = movies
    
    var body: some View {
        NavigationView {
            MovieList(movies: $moviesData)
            .navigationBarTitle("Movies")
                .foregroundColor(Color.black)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView().environment(\.colorScheme, .dark)
            ContentView().environment(\.colorScheme, .light)
        }
    }
}

struct MovieList: View {
    @Binding var movies: [Movie]
    
    var body: some View {
        List(movies) { movie in
            NavigationLink(destination: DetailView(movie: movie)) {
                VStack(alignment: .leading) {
                    Image(movie.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(10)
                    Text(movie.name)
                        .font(.system(size: 16))
                }
            }
        }
    }
}
