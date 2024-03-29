//
//  ContentView.swift
//  asyncupdatesample
//
//  Created by John Palevich on 3/29/24.
//

import SwiftUI

struct ContentView: View {
    @Environment(Model.self) private var model

    var body: some View {
        VStack {
            ModelView()
            AsyncButton(action: {
                // Simulate a network request, by sleeping for a second.
                try? await Task.sleep(nanoseconds: 1_000_000_000)
                
                // Dispatch back to the main thread to update model
                DispatchQueue.main.async {
                    model.count += 1
                }
            }, label: {
                Text("Increment Asynchronously")
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
