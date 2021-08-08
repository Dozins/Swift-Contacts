//
//  ContactDetailView.swift
//  Contacts
//
//  Created by Jayden Lee on 8/8/21.
//

import SwiftUI

struct ContactDetailView: View {
    var contact: Contact
    var body: some View {
        Text(contact.name)
            .font(.title)
    }
}

struct ContactDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailView(contact: Contact(name: "Rick", job: "Youtube"))
    }
}
