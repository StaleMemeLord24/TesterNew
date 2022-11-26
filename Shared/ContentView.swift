//
//  ContentView.swift
//  Shared
//
//  Created by Alex Zhou on 11/26/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            NavigationLink(destination: ActualInterface()){
                Text("Start a new session")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
