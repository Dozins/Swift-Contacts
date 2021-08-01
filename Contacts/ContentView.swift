//
//  ContentView.swift
//  Contacts
//
//  Created by Jayden Lee on 1/8/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List{
                Text("Dragon")
                Text("Deez")
                Text("Nuts")
            }
            .navigationTitle("Contacts")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
