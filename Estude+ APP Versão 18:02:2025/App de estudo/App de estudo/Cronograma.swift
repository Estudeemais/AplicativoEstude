import SwiftUI

struct CriarCronograma: View {
    @Binding var cronogramas: [String] // Lista de cronogramas compartilhada
    @State private var nomeCronograma = ""
    @State private var selectedDate = Date()
    @State private var selectedDays = Set<String>()
    @State private var selectedSubjects = Set<String>()
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                
                Text("Nome do Cronograma")
                    .font(Font.custom("Poppins", size: 20))
                    .foregroundColor(.black)
                    .padding(.horizontal)

                TextField("Digite o nome do cronograma", text: $nomeCronograma)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(red: 0.5, green: 0.58, blue: 0.45), lineWidth: 2)
                    )
                    .padding(.horizontal)

                Text("Selecione a Data de Término")
                    .font(Font.custom("Poppins", size: 20))
                    .foregroundColor(.black)
                    .padding(.horizontal)

                DatePicker("Escolha uma data", selection: $selectedDate, displayedComponents: .date)
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding(.horizontal)
                    .environment(\.locale, Locale(identifier: "pt_BR"))

                Text("Quais Dias da Semana Você Pretende Estudar?")
                    .font(Font.custom("Poppins", size: 17))
                    .foregroundColor(.black)
                    .padding(.horizontal)

                LazyVGrid(columns: Array(repeating: .init(.flexible()), count: 2), spacing: 10) {
                    let dias = ["Segunda-feira", "Terça-feira", "Quarta-feira", "Quinta-feira", "Sexta-feira", "Sábado", "Domingo"]
                    ForEach(dias, id: \.self) { dia in
                        Button(action: {
                            if selectedDays.contains(dia) {
                                selectedDays.remove(dia)
                            } else {
                                selectedDays.insert(dia)
                            }
                        }) {
                            Text(dia)
                                .font(Font.custom("Poppins", size: 17))
                                .foregroundColor(.white)
                                .frame(width: 150, height: 40)
                                .background(selectedDays.contains(dia) ? Color.green : Color(red: 0.64, green: 0.69, blue: 0.56))
                                .cornerRadius(20)
                        }
                    }
                }
                .padding(.horizontal)

                Text("Quais Disciplinas Você Quer Estudar na Semana?")
                    .font(Font.custom("Poppins", size: 17))
                    .foregroundColor(.black)
                    .padding(.horizontal)
                    .padding(.top, 20)

                VStack(spacing: 10) {
                    let disciplinas = ["Matemática", "Linguagens", "Física", "Química", "Biologia", "História", "Geografia", "Filosofia e Sociologia"]
                    ForEach(disciplinas, id: \.self) { disciplina in
                        Button(action: {
                            if selectedSubjects.contains(disciplina) {
                                selectedSubjects.remove(disciplina)
                            } else {
                                selectedSubjects.insert(disciplina)
                            }
                        }) {
                            Text(disciplina)
                                .font(Font.custom("Poppins", size: 17))
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .background(selectedSubjects.contains(disciplina) ? Color.green : Color(red: 0.64, green: 0.69, blue: 0.56))
                                .cornerRadius(20)
                                .padding(.horizontal)
                        }
                    }
                }

                Button(action: {
                    if !nomeCronograma.isEmpty {
                        let dateFormatter = DateFormatter()
                        dateFormatter.dateFormat = "dd/MM/yyyy"
                        let dataFormatada = dateFormatter.string(from: selectedDate)
                        
                        let diasSelecionados = selectedDays.joined(separator: ", ")
                        let disciplinasSelecionadas = selectedSubjects.joined(separator: ", ")

                        let cronogramaInfo = """
                        Nome: \(nomeCronograma)
                        Data de término: \(dataFormatada)
                        Dias: \(diasSelecionados)
                        Disciplinas: \(disciplinasSelecionadas)
                        """

                        cronogramas.append(cronogramaInfo)
                        presentationMode.wrappedValue.dismiss() // Fecha a tela de criação
                    }
                }) {
                    Text("Salvar")
                        .font(Font.custom("Poppins", size: 20))
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 200)
                        .background(Color(red: 0.64, green: 0.69, blue: 0.56))
                        .cornerRadius(10)
                        .padding(.top, 30)
                        .padding(.leading, 100)
                }
            }
            .padding(.top, 20)
        }
        .background(Color(red: 0.98, green: 0.94, blue: 0.81).edgesIgnoringSafeArea(.all))
    }
}

#Preview {
    CriarCronograma(cronogramas: .constant([]))
}

