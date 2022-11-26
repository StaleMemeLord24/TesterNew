//
//  ActualInterface.swift
//  Tester
//
//  Created by Alex Zhou on 2/1/23.
//

import SwiftUI

struct ActualInterface: View {
    @State private var messages: String=""
    var body: some View {
        VStack{
        ContentMessageView(contentMessage: "Testing", isCurrentUser: true)
            TextField("Messages...", text: $messages)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(minHeight: CGFloat(30))
        }.frame(minHeight: CGFloat(50)).padding()
    }
}
struct ContentMessageView: View{
    var contentMessage: String
    var isCurrentUser:Bool
    var body: some View{
        Text(contentMessage)
            .padding(10)
            .foregroundColor(isCurrentUser ? Color.white: Color.black)
            .background(isCurrentUser ? Color.blue: Color(UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha:1.0)))
            .cornerRadius(10)
            
    }
}
struct ActualInterface_Previews: PreviewProvider {
    static var previews: some View {
        ActualInterface()
    }
}
