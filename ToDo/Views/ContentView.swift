//
//  ContentView.swift
//  ToDo
//
//  Created by Drew Brokamp on 8/18/21.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var userData: Data
    
    var body: some View {
        ThemeView(userData: userData)
    }
     
}








struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(userData: Data(themes: [Theme()]))
        
    }
}

