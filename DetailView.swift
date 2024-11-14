

import SwiftUI

struct DetailView: View {
    @State private var searchText: String = ""
    var body: some View {
        VStack{
            Text("this is detail view!")
        }.toolbar{
            ToolbarItem(placement: .principal){
                HStack{
                    TextField("Search...",text:$searchText)
                }
                .padding(8)
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .frame(maxWidth: 300) // Adjust as needed
                
            }
        }
    }
}

