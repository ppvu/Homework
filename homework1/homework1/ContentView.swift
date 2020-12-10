//
//  ContentView.swift
//  homework1
//
//  Created by spezza on 09.12.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            AppHeader()
            MainLogic()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
