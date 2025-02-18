import SwiftUI

struct NewView8: View {
    @State private var checkedItems: [String: Bool] = [:]
    @State private var searchText: String = ""
    
    var filteredLinguagens: [String] {
        if searchText.isEmpty {
            return linguagens
        } else {
            return linguagens.filter { $0.lowercased().hasPrefix(searchText.lowercased()) }
        }
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    
                    // Botão de Voltar com apenas o texto, sem borda
                    NavigationLink(destination: NewView4()) {
                        Text("Voltar")
                            .font(.title3)
                            .foregroundColor(.blue) // Cor do texto
                            .padding() // Apenas o padding ao redor do texto, sem borda
                    }
                    .padding([.leading, .trailing])
                    
                    // Barra de Pesquisa
                    TextField("Buscar linguagem", text: $searchText)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                        .padding([.leading, .trailing])
                    
                    Text("Linguagens")
                        .font(Font.custom("Arial", size: 30).weight(.semibold))
                        .padding(.top, 20)
                        .padding(.leading, 100)
                    
                    // Lista de linguagens filtradas
                    ForEach(filteredLinguagens, id: \.self) { linguagem in
                        HStack {
                            Text(linguagem)
                                .font(Font.custom("Poppins", size: 20))
                                .foregroundColor(.black)
                            
                            Spacer()
                            
                            Button(action: {
                                checkedItems[linguagem] = !(checkedItems[linguagem] ?? false)
                            }) {
                                Image(systemName: checkedItems[linguagem] ?? false ? "checkmark.square.fill" : "square")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(.blue)
                            }
                        }
                        .padding()
                        .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                        .cornerRadius(10)
                    }
                }
                .padding()
            }
            .background(Color(red: 0.98, green: 0.94, blue: 0.81))
        }
        .navigationTitle("Linguagens")
        .navigationBarBackButtonHidden(true) // Ocultar o botão de voltar padrão
    }
}

let linguagens = [
    "Análise morfológica", "Sujeito e Predicado", "Vocativo", "Termos associados ao verbo",
    "Termos associados ao nome", "Concordância Verbal", "Concordância Nominal",
    "Orações subordinadas", "Regras de ortografia", "Regras de pontuação",
    "Regras de Acentuação", "Crase", "Variantes linguísticas",
    "Escolas literárias", "Figuras de linguagem"
]

#Preview {
    NewView8()
}

