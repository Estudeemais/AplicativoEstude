//
//  NewView2.swift
//  App de estudo
//
//  Created by found on 04/02/25.
//

import SwiftUI

struct NewView2: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 0.98, green: 0.94, blue: 0.81)
                    .ignoresSafeArea()
                
                VStack {
                    Text("Meu Desempenho")
                        .font(
                            Font.custom("SF Pro Rounded", size: 30)
                                .weight(.semibold)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .padding(.top, 30)
                        .padding(.trailing, 110)
                    
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 40, height: 40)
                      .background(
                        Image("grafico")
                          .resizable()
                          .aspectRatio(contentMode: .fill)
                          .frame(width: 40, height: 40)
                          .clipped()
                        
                          .padding(.bottom, 110)
                          .padding(.leading, 230)
                          
                        
                      )
                    
                    ZStack {
                        
                        Text("Sobre sua taxa de concluído:")
                            .font(Font.custom("Poppins", size: 20))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .frame(width: 363, height: 38, alignment: .top)
                            .padding(.top, -50)
                        
                        
                        Text("Você concluiu 80%  das matérias listadas")
                            .font(
                                Font.custom("Poppins", size: 17)
                                    .weight(.semibold)
                            )
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .frame(width: 315, height: 60, alignment: .top)
                            .padding(.top, 70)
                    }
                    
            
                    
                    
                    .frame(width: 354, height: 177)
                    .background(Color(red: 0.64, green: 0.69, blue: 0.56))
                    .cornerRadius(20)
                    
                    
                    
                    
                    
                    
                    
                    
//                    
//                    ZStack {
//                        
//                        Text("Sua matéria mais próxima de ser concluida:")
//                            .font(Font.custom("Poppins", size: 20))
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(.black)
//                            .frame(width: 363, alignment: .top)
//                            .padding(.top, -40)
//                        
//                    
//                        
//                        
//                        
////                        Text("Matemática")
////                          .font(
////                            Font.custom("Poppins", size: 17)
////                              .weight(.semibold)
////                          )
////                          .multilineTextAlignment(.center)
////                          .foregroundColor(.white)
////                          .frame(width: 315, height: 24, alignment: .top)
////                          .padding(.top, 90)
//                        
//                        
//                        
//                        }
                    .frame(width: 354, height: 177)
                    .background(Color(red: 0.64, green: 0.69, blue: 0.56))
                    .cornerRadius(20)
                    .padding(.top, 80)
                    
                    Spacer()
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    NewView2()
}
