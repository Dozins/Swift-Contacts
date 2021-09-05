//
//  NewContactView.swift
//  Contacts
//
//  Created by Jayden Lee on 22/8/21.
//

import SwiftUI

struct NewContactView: View {
    @Binding var contacts: [Contact]
    @State var newContact = Contact(name: "", job: "")
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        Form {
            Section(header: Text("Personal information")) {
                TextField("Name", text: $newContact.name)
                TextField("Company", text: $newContact.job)
                TextField("Background Image", text:$newContact.brg)
            }
            
            Section(header: Text("Rating")) {
                Slider(value: $newContact.rating, in: 0...5, step: 1)
                }
            Section {
                Button("Save") {
                    contacts.append(newContact)
                    presentationMode.wrappedValue.dismiss()
                }
                Button ("Cancel") {
                    presentationMode.wrappedValue.dismiss()
                }.foregroundColor(.red)
            }
        }
    }
}

struct NewContactView_Previews: PreviewProvider {
    static var previews: some View {
        NewContactView(contacts: .constant([]))
    }
}
