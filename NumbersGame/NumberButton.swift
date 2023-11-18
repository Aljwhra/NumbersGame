//
//  NumberButton.swift
//  NumbersGame
//
//  Created by Aljwhra Alnasser on 18/11/2023.
//

import SwiftUI

struct NumberButton: View {
    let number: Int
    @Binding var collectedNumbers: [Int]

    var body: some View {
        
        Button(action: {
            // Add the tapped number to the collected numbers
            collectedNumbers.append(number)
        }) {
            Text("\(number)")
                .font(.title)
              //  .padding()
                .foregroundColor(.white)
                
        }
        .background(
        Image("IMG2")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 65,height: 65)
        
        )
    }
}

//#Preview {
//    NumberButton()
//}
