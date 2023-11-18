//
//  ContentView.swift
//  NumbersGame
//
//  Created by Aljwhra Alnasser on 18/11/2023.
//

import SwiftUI

struct ContentView: View {
    
        @State private var collectedNumbers: [Int] = []
    
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3) // 3 columns

    var body: some View {
        ScrollView{
            VStack {
                VStack{
                    Text("Let's press the buttons to collect numbers")
                        .foregroundStyle(.white)
                        .bold()
                        
                        .background(
                        RoundedRectangle(cornerRadius: 25.0)
                            .fill(.color1)
                       
                        .frame(width: 360,height: 50)
                        )
                       
                       
                        .padding(.top,30)
                        .padding(.bottom,70)
                    
                    Image("IMG1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 200,height: 200)
                }.padding(.bottom,50)
                
                
                LazyVGrid(columns: columns, spacing: 40){
                    
                    NumberButton(number: 1, collectedNumbers: $collectedNumbers)
                    NumberButton(number: 2, collectedNumbers: $collectedNumbers)
                    NumberButton(number: 3, collectedNumbers: $collectedNumbers)
                    NumberButton(number: 4, collectedNumbers: $collectedNumbers)
                    NumberButton(number: 5, collectedNumbers: $collectedNumbers)
                    NumberButton(number: 6, collectedNumbers: $collectedNumbers)
                    NumberButton(number: 7, collectedNumbers: $collectedNumbers)
                    NumberButton(number: 8, collectedNumbers: $collectedNumbers)
                    NumberButton(number: 9, collectedNumbers: $collectedNumbers)
                }
                
                
                
                
                VStack{
                    HStack{
                        ForEach(collectedNumbers, id: \.self) { number in
                            Text("\(number)+")
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                    }
                    
                    Text("Sum: \(calculateSum())")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding(.top,2)
                    
                }
                .background(
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(.color1)
                   
                    .frame(width: 360,height: 110)
                    )
                
                .padding(.top,70)
                
                
               
            }
        }
    }

        func calculateSum() -> Int {
            return collectedNumbers.reduce(0, +)
        }
    }


#Preview {
    ContentView()
}
