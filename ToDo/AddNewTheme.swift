//
//  AddNewTheme.swift
//  ToDo
//
//  Created by Drew Brokamp on 8/18/21.
//

import SwiftUI

struct AddNewTheme: View {
    
    @Binding var themes: [Theme]
    @Binding var newTheme: String
    @Binding var showAddNewTheme: Bool

    var body: some View {
        VStack {
            HeaderText(header: "A New Theme")
            Text("A new subject, idea, or manner of living that is central to your life.")
                .padding()
            
            VStack {
                TextField("New Theme", text: $newTheme)
                    .font(.title)
                    .padding()
                    .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(10.0)
            }
            .padding()
            
            Button(action: {
                showAddNewTheme = false
                themes.append(Theme(name: newTheme))
            }, label: {
                ButtonText(text: "Add Theme")
            })
                
        }
    }
}

struct AddNewTheme_Previews: PreviewProvider {
    
    static private var newTheme = Binding.constant("New Theme")
    static private var themes = Binding.constant([Theme(name: "Theme")])
    static private var showAddNewTheme = Binding.constant(false)


    
    static var previews: some View {
        AddNewTheme(themes: themes, newTheme: newTheme, showAddNewTheme: showAddNewTheme)
    }
}
