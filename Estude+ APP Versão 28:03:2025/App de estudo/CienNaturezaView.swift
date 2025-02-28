//
//  NewView5.swift
//  App de estudo
//
//  Created by found on 11/02/25.
//

import SwiftUI

struct CienNaturezaView: View {
    var body: some View {
        ZStack {Text("Ciências da Natureza")
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
              .padding(.leading, 300)
              .padding(.top, 50)
            
            
            
            HStack(alignment: .center, spacing: 0) { Text("Química ")
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
            .padding(.top, -280)
            
            
            HStack(alignment: .center, spacing: 0) { Text("Física")
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
            
            .padding(.top, -90)
            
            HStack(alignment: .center, spacing: 0) { Text("Biologia")
                    .font(Font.custom("Poppins", size: 24))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .frame(width: 154, height: 32, alignment: .top) }
            .padding(.leading, 13)
            .padding(.trailing, 219)
            .padding(.top, 27)
            .padding(.bottom, 59)
            .frame(width: 386, height: 118, alignment: .leading)
            .background(Color(red: 0.64, green: 0.69, blue: 0.56))
            .cornerRadius(30)
            .padding(.top, 270)
            
            
        }
        .frame(width: 430, height: 932)
        .background(Color(red: 0.98, green: 0.94, blue: 0.81))
    }
}

#Preview {
    CienNaturezaView()
}
