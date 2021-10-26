//
//  SwiftUIView.swift
//  ToDo
//
//  Created by Drew Brokamp on 10/24/21.
//

import SwiftUI

struct AddNewThemeModal: View {
    
    @Binding var isAddNewThemeActive: Bool
    
    var body: some View {
        VStack {
            Text("Add New Theme")
                .font(.largeTitle)
                .padding(.bottom, 20.0)
            Button(action: {
                isAddNewThemeActive.toggle()
            }, label: {
                if #available(iOS 15.0, *) {
                    Text("Add New Theme")
                        .buttonBorderShape(.roundedRectangle)
                } else {
                    // Fallback on earlier versions
                    Text("Add New Theme")
                }
            })
        }

        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    
    static private var isAddNewThemeActive = Binding.constant(false)
    
    static var previews: some View {
        AddNewThemeModal(isAddNewThemeActive: isAddNewThemeActive)
    }
}
