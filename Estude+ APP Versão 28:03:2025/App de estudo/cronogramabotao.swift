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
        ZStack {
            Color(red: 0.64, green: 0.69, blue: 0.56)
            Text(nome)
                .font(Font.custom("Poppins", size: 22))
                .foregroundColor(.white)
        }
        .frame(height: 159)
        .clipShape(RoundedRectangle(cornerRadius: 40))
        .padding(.horizontal)
        .padding(.trailing)
        .padding(.vertical, 20)
    }
}

#Preview {
    CronogramaBotao(nome: "Meu Botão")
}
