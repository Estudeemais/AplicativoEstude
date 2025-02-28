//
//  NewView6.swift
//  App de estudo
//
//  Created by found on 11/02/25.
//

import SwiftUI

struct NewView6: View {
    var body: some View {
        ZStack {Text("Ciências Humanas")
                .font(
                    Font.custom("SF Pro Rounded", size: 30)
                        .weight(.semibold)
                )
                .foregroundColor(.black)
                .padding(.top, -370)
                .padding(.leading, -70)
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 47.35849, height: 54.56092)
              .background(
                Image("prancheta")
                  .resizable()
                  .aspectRatio(contentMode: .fill)
                  .frame(width: 47.35849380493164, height: 54.560916900634766)
                  .clipped()
              )
              .padding(.top, -400)
              .padding(.leading, 250)
              .padding(.top, 50)
            
            HStack(alignment: .center, spacing: 0) { Text("Historia ")
                    .font(Font.custom("Poppins", size: 24))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .frame(width: 181, height: 32, alignment: .top) }
            .padding(.leading, 0)
            .padding(.trailing, 205)
            .padding(.top, 27)
            .padding(.bottom, 59)
            .frame(width: 386, height: 118, alignment: .leading)
            .background(Color(red: 0.64, green: 0.69, blue: 0.56))
            .cornerRadius(30)
            .padding(.top, -250)
            
            HStack(alignment: .center, spacing: 0) { Text("Geografia")
                    .font(Font.custom("Poppins", size: 24))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .frame(width: 154, height: 32, alignment: .top)}
            .padding(.leading, 13)
            .padding(.trailing, 219)
            .padding(.top, 27)
            .padding(.bottom, 59)
            .frame(width: 386, height: 118, alignment: .leading)
            .background(Color(red: 0.64, green: 0.69, blue: 0.56))
            .cornerRadius(30)
            
            
            HStack(alignment: .center, spacing: 0) {Text("Filosofia e Sociologia")
                    .font(Font.custom("Poppins", size: 24))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .frame(width: 275, height: 32, alignment: .top) }
            .padding(.leading, 21)
            .padding(.trailing, 90)
            .padding(.top, 27)
            .padding(.bottom, 59)
            .frame(width: 386, height: 118, alignment: .leading)
            .background(Color(red: 0.64, green: 0.69, blue: 0.56))
            .cornerRadius(30)
            .padding(.top, 360)
            
            
            
             }
        .frame(width: 430, height: 932)
        .background(Color(red: 0.98, green: 0.94, blue: 0.81))    }
}

#Preview {
    NewView6()
}
