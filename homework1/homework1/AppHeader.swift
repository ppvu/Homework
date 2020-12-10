//
//  AppHeader.swift
//  homework1
//
//  Created by spezza on 09.12.2020.
//

import SwiftUI

struct AppHeader: View {
    var body: some View {
        VStack {
            VStack {
                Text("My Calculator")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text("by Kononenko Yevhen")
                    .font(.footnote)
            }
        }
    }
}

struct AppHeader_Previews: PreviewProvider {
    static var previews: some View {
        AppHeader()
    }
}
