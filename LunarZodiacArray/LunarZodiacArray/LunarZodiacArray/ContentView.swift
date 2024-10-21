//
//  ContentView.swift
//  LunarZodiacArray
//
//  Created by Shiva Shashank Rao Nemarugommula on 10/13/24.
//

import SwiftUI
import SwiftData

struct ContentView: View{
    @State private var year=2023
    @State private var imageNumber=3
    
    let animalNames=["RAT", "OX", "TIGER", "RABBIT", "DRAGON", "SNAKE", "HORSE", "GOAT", "MONKEY", "ROOSTER", "DOG", "PIG"]
    
    var body:some View{
        VStack{
            Text(String(year))
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.red)
            
            Spacer()
            
            Image(animalNames[imageNumber])
                .resizable()
                .scaledToFit()
            
            Text(animalNames[imageNumber])
                .font(.largeTitle)
                .fontWeight(.black)
                .padding(.top)
            
            Spacer()
            
            HStack{
                Button("<"){
                    year-=1
                    imageNumber-=1
                    if imageNumber<0{
                        imageNumber=11
                    }
                }
                Spacer()
                Button(">"){
                    year+=1
                    imageNumber+=1
                    if imageNumber>11{
                        imageNumber=0
                    }
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.red)
            .font(.largeTitle)
            .fontWeight(.black)
        }
        .padding()
    }
    
    
}
