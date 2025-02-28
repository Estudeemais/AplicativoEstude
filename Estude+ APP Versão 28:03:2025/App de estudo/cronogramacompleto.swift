import SwiftUI

struct CronogramaCompleto: View {
    @State private var diaSelecionado = "Seg" // Começa com segunda-feira
    
    let dias = ["Seg", "Ter", "Qua", "Qui", "Sex", "Sáb", "Dom"]
    
    let materiasPorDia: [String: [String]] = [
        "Seg": ["Matemática", "Linguagens", "Química"],
        "Ter": ["Físca", "História", "Geografia"],
        "Qua": ["Biologia", "Redação", "Sociologia"],
        "Qui": ["Inglês", "Filosofia", "Artes"],
        "Sex": ["Matemática", "Química", "Física"],
        "Sáb": ["Revisão Geral", "Exercícios"],
        "Dom": ["Simulado", "Correção de provas"]
    ]
    
    var body: some View {
        VStack {
            Text("Enem 2025")
                .font(.system(size: 30, weight: .semibold, design: .rounded))
                .foregroundColor(.black)
                .padding(.top, 20)
                .padding(.leading, -180)
            
            // Barra de seleção de dias
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(dias, id: \.self) { dia in
                        Button(action: {
                            diaSelecionado = dia
                        }) {
                            Text(dia)
                                .font(.headline)
                                .foregroundColor(diaSelecionado == dia ? .white : .black)
                                .padding()
                                .background(diaSelecionado == dia ? Color.green : Color.clear)
                                .cornerRadius(10)
                        }
                    }
                }
                .padding(.horizontal)
                
            }
            .background(Color(red: 0.85, green: 0.85, blue: 0.85)) // Cor de fundo da barra
            
            // Caixa discreta para as matérias
            VStack(alignment: .leading) {
                ForEach(materiasPorDia[diaSelecionado] ?? [], id: \.self) { materia in
                    Text(materia)
                        .font(.title3)
                        .foregroundColor(.white) // Deixa os textos brancos
                        .padding(.vertical, 5)
                        .frame(maxWidth: .infinity, alignment: .leading) // Alinha totalmente à esquerda
                }
            }
            .padding()
            .frame(maxWidth: .infinity, minHeight: 150, maxHeight: 300) // Caixa menor
            .background(Color(red: 0.64, green: 0.69, blue: 0.56)) // Verde similar ao do Figma
            .cornerRadius(12)
            .padding(.horizontal)
            .padding(.top, 40)

            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 0.98, green: 0.94, blue: 0.81)) // Cor de fundo principal
    }
}

#Preview {
    CronogramaCompleto()
}

