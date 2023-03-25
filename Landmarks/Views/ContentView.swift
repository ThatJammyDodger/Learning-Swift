//
//  ContentView.swift
//  Landmarks
//
//  Created by Jay Ambadkar  on 21/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarksList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
