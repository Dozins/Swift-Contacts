//
//  ContentView.swift
//  Contacts
//
//  Created by Jayden Lee on 1/8/21.
//

import SwiftUI

struct ContentView: View {
    
    var contacts = [
        Contact(name: "Oily", job: "not cool man"),
        Contact(name: "Bob", job: "cool man"),
        Contact(name: "Rick", job: "pog", brg: "Bg")
    ]
    var body: some View {
        NavigationView {
            
            ZStack {
                Color.init(white: 0.1)
                List(contacts) { contact in
                    NavigationLink(destination: ContactDetailView(contact:contact)) {
                        VStack(alignment:.leading){
                            Text(contact.name)
                                
                            Text(contact.job)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }
                }
                .navigationTitle("Contacts")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.dark)
    }
}
