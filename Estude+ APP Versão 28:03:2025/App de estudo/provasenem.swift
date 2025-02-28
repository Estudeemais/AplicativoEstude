//
//  NewView3.swift
//  App de estudo
//
//  Created by found on 06/02/25.
//

import SwiftUI

struct NewView3: View {
    
    @Environment(\.openURL) private var openUrl
    
    let columns: [GridItem] = [GridItem(), GridItem()]
    
    let titulos = [
        "Prova 2024", "Prova 2023", "Prova 2022", "Prova 2021", "Prova 2020",
        "Prova 2019", "Prova 2018", "Prova 2017"
    ]
    
    let links = [
        "https://download.inep.gov.br/enem/provas_e_gabaritos/2024_PV_impresso_D1_CD1.pdf", "https://download.inep.gov.br/enem/provas_e_gabaritos/2023_PV_impresso_D1_CD1.pdf",
        "https://download.inep.gov.br/enem/provas_e_gabaritos/2022_PV_impresso_D1_CD1.pdf",
        "https://download.inep.gov.br/enem/provas_e_gabaritos/2021_PV_impresso_D1_CD1.pdf",
        "https://download.inep.gov.br/enem/provas_e_gabaritos/2020_PV_impresso_D1_CD1.pdf",
        "https://download.inep.gov.br/educacao_basica/enem/provas/2019/2019_PV_impresso_D1_CD1.pdf",
        "https://download.inep.gov.br/educacao_basica/enem/provas/2018/2018_PV_impresso_D1_CD1.pdf",
        "https://download.inep.gov.br/educacao_basica/enem/provas/2017/2017_PV_impresso_D1_CD1.pdf"
    ]
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 0.98, green: 0.94, blue: 0.81)
                    .ignoresSafeArea()
                
                
                
                VStack {
                    Text("Provas antigas Enem")
                        .font(
                            Font.custom("SF Pro Rounded", size: 30)
                                .weight(.semibold)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .padding(.top, 30)
                        .padding(.trailing, 110)
                        .padding(.leading, -10)
                        .padding(.leading, 16)
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 40, height: 40)
                        .background(
                            Image("enem")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 40, height: 40)
                                .clipped()
                            
                                .padding(.bottom, 110)
                                .padding(.leading, 230)
                                
                        )
                        .padding(.leading,70)
                    
                    
                    
                    
                }
                .padding(.top, -390)
                
                LazyVGrid(columns: columns) {
                    ForEach(titulos, id: \.self) { titulo in
                        let posicao = titulos.firstIndex(of: titulo)
                        let link = links[posicao!]
                        ProvasButton(url: URL(string: link)!, titulo: titulo)
                    }
                    
                }
                
                
                
                
                        
                        
                        
                    
                    }
            
            
            
        }
       
            
    }
    
}

#Preview {
    NewView3()
}
