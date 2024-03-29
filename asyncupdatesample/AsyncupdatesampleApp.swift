//
//  asyncupdatesampleApp.swift
//  asyncupdatesample
//
//  Created by John Palevich on 3/29/24.
//

import SwiftUI

@main
struct AsyncupdatesampleApp: App {
    private var model = Model()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(model)
        }
    }
}
