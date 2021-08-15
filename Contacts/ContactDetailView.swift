//
//  ContactDetailView.swift
//  Contacts
//
//  Created by Jayden Lee on 8/8/21.
//

import SwiftUI

struct ContactDetailView: View {
    @State var contact: Contact
    var body: some View {
        ZStack {
            Color.init(white: 0.1)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Image(contact.brg)
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .blur(radius: 5)
                .scaleEffect(1.3)
            VStack {
                Image(contact.name)
                    .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                    .scaledToFill()
                    .frame(width: 200.0, height: 200.0)
                    .mask(Circle())
                    .overlay(Circle()
                                .stroke(lineWidth:8)
                                .foregroundColor(.init(white: 0.2)))
                    .shadow(radius: 20)
                    .padding(35.0)
                
                Text(contact.name)
                    .fontWeight(.bold)
                    .font(.system(size:50))
                    .foregroundColor(Color.white)
                Text(contact.job)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.8, green: 0.8, blue: 0.8, opacity: 1.0))
                    .padding(0.1)
                VStack(alignment: .leading){
                    Text("Rating")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    
                    Slider(value: $contact.rating, in: 0...5, step: 1)
                }
                .padding()
                Spacer()
            }
        }
    }
}

struct ContactDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailView(contact: Contact(name: "Rick", job: "Youtube"))
    }
}
