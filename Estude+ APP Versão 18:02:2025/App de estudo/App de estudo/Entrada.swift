import SwiftUI



struct ContentView: View {
    @State var contentText = "Preparado para navegar em uma nova experiência?"
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 0.98, green: 0.94, blue: 0.81)
                    .ignoresSafeArea()
                
                VStack {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 179, height: 178)
                            .background(
                                Image("logo")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 179, height: 178)
                                    .clipped()
                            )
                            .cornerRadius(150)
                            .shadow(color: .black.opacity(0.25), radius: 2, x: 40, y: 4)
                            .overlay(
                                RoundedRectangle(cornerRadius: 150)
                                    .inset(by: 0.5)
                                    .stroke(.black, lineWidth: 1)
                            )
                            .padding(.top, 50)
                        
                        
                        
                        
                        Text("Estude +")
                            .font(
                                Font.custom("Poppins", size: 48)
                                    .weight(.semibold)
                            )
                            .foregroundColor(.black)
                            .padding()
                    
                        
                        Text("Preparado para navegar em uma nova experiência?")
                            .font(
                                Font.custom("Poppins", size: 20)
                                    .weight(.semibold)
                            )
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .padding(.horizontal, 20)
                            
                        
                    
                    
                
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 307, height: 181.09291)
                      .background(
                        Image("textdoinicio")
                          .resizable()
                          .aspectRatio(contentMode: .fill)
                          .frame(width: 255.2744598388672, height: 222.39454650878906)
                          .clipped()
                          .padding(.top, 40)
                )
                    
                    Text("Clique aqui e aproveite:")
                      .font(Font.custom("Poppins", size: 20))
                      .multilineTextAlignment(.center)
                      .foregroundColor(.black)
                      .frame(width: 282, height: 25, alignment: .top)
                      .padding(.bottom, 20)
                      .padding(.top, 60)
                      
                    
                    HStack(alignment: .center, spacing: 65) {  }
                    .padding(8)
                    NavigationLink {
                        TabBarView()
                            .navigationBarBackButtonHidden()
                    } label: {
                        Text("Começar")
                            .font(Font.custom("Poppins", size: 20))
                            .foregroundColor(.white) // Mudando apenas a cor do texto para branco
                            .frame(width: 306, height: 49, alignment: .center) // Tamanho do botão
                            .background(Color(red: 0.19, green: 0.08, blue: 0.02)) // Cor de fundo original
                            .cornerRadius(43) // Cantos arredondados
                            .padding(.top, 15)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.top, 30) // Margem superior para espaçamento
                    .padding(.horizontal, 20) // Padding horizontal para evitar que o botão fique colado nas bordas
                    .padding(.bottom, 40) // Espaçamento inferior para garantir que o botão não fique tão embaixo

                    .frame(maxWidth: .infinity)
                    .padding(.top, 30) // Margem superior para espaçamento
                    .padding(.horizontal, 20) // Padding horizontal para evitar que o botão fique colado nas bordas
                    .padding(.bottom, 40) // Espaçamento inferior para garantir que o botão não fique tão embaixo

                    .frame(width: 306, height: 49, alignment: .center)
                    .background(Color(red: 0.19, green: 0.08, blue: 0.02))
                    
                    .cornerRadius(43)
                    
                    
                    

                }
            }
        }
        
        
        
    }
}

#Preview {
    ContentView()
}
