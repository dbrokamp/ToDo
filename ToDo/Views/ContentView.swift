//
//  ContentView.swift
//  ToDo
//
//  Created by Drew Brokamp on 8/18/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var showAddNewTheme: Bool = false
    @State var themes = [Theme]()
    @State var newTheme: String = ""
    
    var body: some View {
        NavigationView {
            HStack {
                
                Spacer()
                Button(action: {
                    showAddNewTheme = true
                }, label: {
                    Image(systemName: "plus.app")
                        .font(.largeTitle)
                        .padding(.trailing, 10)
                        .foregroundColor(.black)
                })
                .popover(isPresented: $showAddNewTheme, content: {
                    AddNewTheme(themes: $themes, newTheme: $newTheme, showAddNewTheme: $showAddNewTheme)
                })
            }
            
            ForEach(themes) { theme in
                NavigationLink(
                    destination: ThemeView(),
                    label: {
                        ThemeListItem(theme: theme)
                    })
            }
        }
        
        
        
        
        
        
    }
}

struct ThemeListItem: View {
    
    var theme: Theme
    
    var body: some View {
        Text(theme.name)
            .padding()
            .frame(minWidth: 75, minHeight: 75)
            .background(Color.gray)
            .cornerRadius(10.0)
    }
    
}

struct HeaderText: View {
    
    var header: String
    
    var body: some View {
        Text(header)
            .font(.largeTitle)
            .fontWeight(.heavy)
            .padding(.leading, 10)
        
    }
    
}

struct ButtonText: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .fontWeight(.regular)
            .foregroundColor(.white)
            .padding()
            .background(Color.gray)
            .cornerRadius(10.0)
            .padding(.trailing, 20)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
