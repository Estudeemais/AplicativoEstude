//
//  cronogramabotao.swift
//  App de estudo
//
//  Created by found on 18/02/25.
//

import SwiftUI

struct CronogramaBotao: View {
    
    let nome: String
    
    var body: some View {
        VStack(alignment: .center, spacing: 9) {
            
            Button(action: {
                
            }) {
                Text(nome)
                    .font(Font.custom("Poppins", size: 22))
                    .foregroundColor(.white)
                    .frame(width: 268, alignment: .center) // Ajustado para centralizar
            }
            
        }
        .padding(.horizontal, 40)
        .padding(.vertical, 33)
        .frame(width: 346, height: 159, alignment: .center)
        .background(Color(red: 0.64, green: 0.69, blue: 0.56))
        .cornerRadius(40)
        .padding(.top, -300)
    }
}

#Preview {
    CronogramaBotao(nome: "Meu Botão")
}
