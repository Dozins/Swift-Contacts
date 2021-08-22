//
//  ContentView.swift
//  Contacts
//
//  Created by Jayden Lee on 1/8/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var contacts = [
        Contact(name: "Oily", job: "not cool man"),
        Contact(name: "Bob", job: "cool man"),
        Contact(name: "Rick", job: "pog", brg: "Bg")
    ]
    var body: some View {
        NavigationView {
            
            ZStack {
                Color.init(white: 0.1)
                List {
                    ForEach(contacts) { contact in
                        let index = contacts.firstIndex {
                            $0.name == contact.name
                        }!
                        
                        
                        NavigationLink(destination: ContactDetailView(contact:$contacts[index])) {
                            VStack(alignment:.leading){
                                Text(contact.name)
                                    
                                Text(contact.job)
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                    .onDelete(perform: {indexSet in
                        contacts.remove(atOffsets: indexSet)
                    })
                    .onMove(perform: { indices, newOffset in
                        contacts.move(fromOffsets: indices, toOffset: newOffset)
                    })
                }
                .navigationTitle("Contacts")
                .navigationBarItems(leading: EditButton())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.dark)
    }
}
