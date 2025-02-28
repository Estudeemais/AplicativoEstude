import SwiftUI

struct NewView: View {
    var cronogramas: [Cronograma]
    
    @State var selectedCronograma: Cronograma?
    
    var body: some View {
        ZStack {
            Color(red: 0.98, green: 0.94, blue: 0.81)
                .ignoresSafeArea()
            
            ScrollView {
                VStack(alignment: .leading) {
                    if cronogramas.isEmpty {
                        ZStack {
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
                        }
                    } else {
                        ForEach(cronogramas, id: \.id) { cronograma in
                            CronogramaBotao(nome: cronograma.nome)
                                .onTapGesture {
                                    selectedCronograma = cronograma
                                }
                        }
                        Spacer()
                    }
                }
                .padding()
            }
            
            .navigationDestination(item: $selectedCronograma) { cronograma in
                CronogramaCompleto()
            }
        }
    }
}

#Preview {
    NewView(
        cronogramas: [
            Cronograma(nome: "Oi?", dataTermino: Date(), diasDaSemana: [], materias: []),
            Cronograma(nome: "Oi?", dataTermino: Date(), diasDaSemana: [], materias: [])
        ]
    )
}

