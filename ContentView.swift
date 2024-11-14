import SwiftUI
//import DetailView

struct ContentView: View {
    @State private var counting = 0
    func haddleCount(){
        counting += 1
    }
    
    func haddleRemoveCount(){
        counting -= 1
    }
    var body: some View {
        NavigationView{
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, worlddddddd!")
                    .padding()
                Text(String(counting)).padding(.bottom,30).padding(.top,10)
                
                Grid{
                    GridRow{
                        Button(action: haddleCount){
                            Text("Count")
                                .frame(height: 50)
                                .frame(width:100)
                        }.background(Color.blue)
                            .cornerRadius(8)
                            .fontWeight(Font.Weight.bold)
                            .foregroundColor(.white)
                            .padding()
                        Button(action: haddleRemoveCount){
                            Text("Remove")
                                .frame(height: 50)
                                .frame(width:100)
                        }.background(Color.blue)
                            .cornerRadius(8)
                            .fontWeight(Font.Weight.bold)
                            .foregroundColor(.white)
                            .padding()
                    }
                }
                

                NavigationLink(destination: DetailView()) {
                    Text("Go to Detail View")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                    
                }
            }
            .padding()
        }
    }
}
#Preview {
    ContentView()
}
