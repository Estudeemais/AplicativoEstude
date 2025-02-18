//
//  ProvasButton.swift
//  App de estudo
//
//  Created by found on 14/02/25.
//

import SwiftUI

struct ProvasButton: View {
    @Environment(\.openURL) private var openUrl
    
    let url: URL
    let titulo: String
    
    var body: some View {
        Button {
            openUrl(url)
        } label: {
            HStack(alignment: .center, spacing: 0) {
                Text(titulo)
                    .font(Font.custom("Poppins", size: 24))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .frame(maxWidth: 122)
                    .padding(.horizontal, 28)
                    .padding(.vertical, 34)
            }
            .background(Color(red: 0.64, green: 0.69, blue: 0.56))
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .inset(by: 0.5)
                    .stroke(
                        Color(red: 0.27, green: 0.45, blue: 0.29),
                        lineWidth: 1
                    )
                
            )            
        }
    }
}

#Preview {
    ProvasButton(
        url: URL(string: "https://download.inep.gov.br/enem/provas_e_gabaritos/2024_PV_impresso_D1_CD1.pdf")!,
        titulo: "Prova 2024"
    )
}
