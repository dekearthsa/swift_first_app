

import SwiftUI

struct HomeView: View {
    @State private var counting = 0
    @State private var searchText: String = ""
    
    func handleCount() {
        counting += 1
    }
    
    func handleRemoveCount() {
        counting -= 1
    }
    
    func haddleReset(){
        counting = 0
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                VStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                        .padding(.top, 20)
                    
                    Text("Hello, world!")
                        .padding()
                    
                    Text("\(counting)")
                        .font(.title)
                        .padding(.vertical, 10)
                    
                    // Buttons Grid
                    Grid {
                        GridRow {
                            
                            Button(action: handleRemoveCount) {
                                Label("Remove", systemImage: "trash")
                                    .frame(maxWidth: .infinity, maxHeight: 140)
                            }.background(Color(red: 0.9, green: 0.3, blue: 0.4))
                                .cornerRadius(8)
                                .fontWeight(Font.Weight.bold)
                                .foregroundColor(.white)
                                .padding()
         
                            
                            Button(action: handleCount) {
                                Label("Add", systemImage: "plus.diamond.fill")
                                    .frame(maxWidth: .infinity, maxHeight: 140)
                    
                            }.background(Color.blue)
                                .cornerRadius(8)
                                .fontWeight(Font.Weight.bold)
                                .foregroundColor(.white)
                                .padding()
                            
                            
                        }
                    }
                    .padding(.bottom, 20)
                    .padding(.top, 100)
                    
                    // Navigation Link to DetailView
                    NavigationLink(destination: DetailView()) {
                        Text("RESET COUNTING")
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .cornerRadius(8)
                            .fontWeight(.bold)
                    }
                    .padding(.horizontal)
                }
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        HStack {
                            Image(systemName: "magnifyingglass")
                            TextField("Search...", text: $searchText)
                                .textFieldStyle(PlainTextFieldStyle())
                        }
                        .padding(8)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .frame(maxWidth: 300)
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    HomeView()
}
