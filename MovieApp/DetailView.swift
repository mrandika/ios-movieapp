//
//  DetailView.swift
//  MovieApp
//
//  Created by Andika on 31/12/19.
//  Copyright © 2019 Andika. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var modalShown = false
    
    
    var movie: Movie
    var body: some View {
        GeometryReader { geometry in
            NavigationView() {
                Image("A-\(self.movie.image)")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                    .edgesIgnoringSafeArea(.all)
                    }
            .navigationBarItems(leading: Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }, label: { Image("back").foregroundColor(Color.white) } ))
            
            ModalView(isOpen: self.$modalShown, maxHeight: geometry.size.height * 0.7) {
                
                VStack(alignment: .leading) {
                    HStack {
                        Text(self.movie.name)
                            .font(.headline).bold()
                        Spacer()
                        Text(self.movie.year)
                    }.padding(.bottom)
                    Text(self.movie.description)
                    .multilineTextAlignment(.leading)
                }
                .padding()
                
                
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(movie: movies[0])
    }
}
