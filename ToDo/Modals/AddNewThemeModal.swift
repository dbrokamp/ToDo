//
//  SwiftUIView.swift
//  ToDo
//
//  Created by Drew Brokamp on 10/24/21.
//

import SwiftUI

struct AddNewThemeModal: View {
    
    @StateObject var userData: Data
    @Binding var isAddNewThemeActive: Bool
    @State private var newThemeName: String = ""
    
    var body: some View {
        VStack {
            Text("Add New Theme")
                .font(.largeTitle)
                .padding(20.0)
            
            TextField("New Theme", text: $newThemeName)
                .textFieldStyle(.roundedBorder)
                .padding()
            Button(action: {
                isAddNewThemeActive.toggle()
                userData.addNewTheme(newThemeName)
            }, label: {
                if #available(iOS 15.0, *) {
                    Text("Add New Theme")
                        .buttonBorderShape(.roundedRectangle)
                } else {
                    // Fallback on earlier versions
                    Text("Add New Theme")
                }
            })
                .padding()
        }

        .background(Color.gray)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    
    static private var isAddNewThemeActive = Binding.constant(false)
    static private var data = Binding.constant(Data(themes: [Theme()]))
    
    static var previews: some View {
        AddNewThemeModal(userData: Data(themes: [Theme()]), isAddNewThemeActive: isAddNewThemeActive)
    }
}
