//
//  ThemeView.swift
//  ToDo
//
//  Created by Drew Brokamp on 11/20/21.
//

import SwiftUI

struct ThemeView: View {
    
    @StateObject var userData: Data
    @State private var isAddNewThemeActive: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text("Add new theme")
                    .bold()
                Button(action: {
                    isAddNewThemeActive.toggle()
                }, label: {
                    Image(systemName: "plus.square")
                        .font(.largeTitle)
                        .padding()
                })
                    .sheet(isPresented: $isAddNewThemeActive, onDismiss: { didDimiss() }, content: { AddNewThemeModal(userData: userData, isAddNewThemeActive: $isAddNewThemeActive) })
            }
            
            NavigationView {
                BoxList(themes: userData.userThemes)
                    .navigationBarTitle("Themes", displayMode: .large)

                
            }
            
        }
        
    }
    
    
    func didDimiss() {
        print("Dismissed the add new theme modal")
    }
}

struct ThemeView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeView(userData: Data(themes: [Theme()]))
    }
}
