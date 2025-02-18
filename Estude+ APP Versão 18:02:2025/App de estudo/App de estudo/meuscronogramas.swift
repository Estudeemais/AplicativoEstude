//
//  NewView.swift
//  App de estudo
//
//  Created by found on 31/01/25.
//

import SwiftUI

struct NewView: View {
    var cronogramas: [String]
    
    var body: some View {
        ZStack {
            Color(red: 0.98, green: 0.94, blue: 0.81)
                .ignoresSafeArea()
            if cronogramas.isEmpty {
                Image("dario")
                    .resizable()
                    .scaledToFit()
                    .padding(110)
                    .rotationEffect(Angle(degrees: -5.15))
                
                
                Text("Você ainda não possui um cronograma, adicione e comece os estudos!")
                    .font(
                        Font.custom("Poppins", size: 15)
                            .weight(.medium)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.5, green: 0.58, blue: 0.45))
                    .frame(width: 281, alignment: .top)
                    .padding(.top, 250)
            } else {
                
                
                Text("Tem cronogramas")
                
            }
            
            
            
        }
        
    }
}

#Preview {
    NewView(cronogramas: [])
}
