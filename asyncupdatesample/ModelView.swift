//
//  ModelView.swift
//  asyncupdatesample
//
//  Created by John Palevich on 3/29/24.
//

import SwiftUI

struct ModelView : View {
    @Environment(Model.self) private var model
    
    var body: some View {
        Text(model.count, format: .number)
    }
}
