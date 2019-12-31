//
//  Movie.swift
//  MovieApp
//
//  Created by Andika on 31/12/19.
//  Copyright © 2019 Andika. All rights reserved.
//

import SwiftUI

struct Movie: Identifiable {
    var id = UUID()
    var name = String()
    var image = String()
    var year = String()
    var description = String()
}

let movies = [
    Movie(name: "The Lion King", image: "the-lion-king", year: "2019", description: "The Lion King is a 2019 American musical film directed and produced by Jon Favreau, written by Jeff Nathanson, and produced by Walt Disney Pictures. It is a photorealistic computer-generated remake of Disney's traditionally animated 1994 film of the same name. The film stars the voices of Donald Glover, Seth Rogen, Chiwetel Ejiofor, Alfre Woodard, Billy Eichner, John Kani, John Oliver, and Beyoncé Knowles-Carter, as well as James Earl Jones reprising his role from the original film. The plot follows Simba, a young lion who must embrace his role as the rightful king of his native land following the murder of his father, Mufasa, at the hands of his uncle, Scar."),
    Movie(name: "Aladdin", image: "aladdin", year: "2019", description: "Aladdin is a 2019 American musical fantasy film produced by Walt Disney Pictures. Directed by Guy Ritchie, who co-wrote the screenplay with John August, it is a live-action adaptation of Disney's 1992 animated film of the same name, which itself is based on the eponymous tale from One Thousand and One Nights. The film stars Will Smith, Mena Massoud, Naomi Scott, Marwan Kenzari, Navid Negahban, Nasim Pedrad, Billy Magnussen, and Numan Acar, as well as the voices of Alan Tudyk and Frank Welker. The plot follows Aladdin, a street urchin, as he falls in love with Princess Jasmine, befriends a wish-granting Genie, and battles the wicked Jafar."),
    Movie(name: "The Avengers: End Game", image: "avengers-end-game", year: "2019", description: "Avengers: Endgame is a 2019 American superhero film based on the Marvel Comics superhero team the Avengers, produced by Marvel Studios and distributed by Walt Disney Studios Motion Pictures. It is the sequel to 2012's The Avengers, 2015's Avengers: Age of Ultron, and 2018's Avengers: Infinity War, and the twenty-second film in the Marvel Cinematic Universe (MCU). It was directed by Anthony and Joe Russo and written by Christopher Markus and Stephen McFeely, and features an ensemble cast including Robert Downey Jr., Chris Evans, Mark Ruffalo, Chris Hemsworth, Scarlett Johansson, Jeremy Renner, Don Cheadle, Paul Rudd, Brie Larson, Karen Gillan, Danai Gurira, Benedict Wong, Jon Favreau, Bradley Cooper, Gwyneth Paltrow, and Josh Brolin. In the film, the surviving members of the Avengers and their allies attempt to reverse the damage caused by Thanos in Infinity War."),
]
