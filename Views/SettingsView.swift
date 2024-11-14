//
//  SettingsView.swift
//  basic
//
//  Created by pcsishun on 14/11/2567 BE.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Settings")
                    .font(.largeTitle)
                    .padding()
                
                // Add your settings content here
                Spacer()
            }
            .navigationTitle("Settings")
        }
    }
}
#Preview {
    SettingsView()
}
