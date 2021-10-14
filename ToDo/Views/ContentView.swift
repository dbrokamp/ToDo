//
//  ContentView.swift
//  ToDo
//
//  Created by Drew Brokamp on 8/18/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var showAddNewTheme: Bool = false
    @State var themes = data
    @State var newTheme: String = ""
    
    var body: some View {
        
        NavigationView {

            BoxSubView(themes: $themes)
        }
    }
 
        

            

}

struct BoxListItem: View {
    
    var theme: Theme
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            RoundedRectangle(cornerRadius: 10.0)
                .fill(
                    RadialGradient(gradient: Gradient(colors: [.black, .purple]), center: .bottomLeading, startRadius: 3, endRadius: 200)
                )
                .frame(idealWidth: 100, maxWidth: .infinity, idealHeight: 100, maxHeight: .infinity, alignment: .bottomLeading)
            Text(theme.name)
                .foregroundColor(.white)
                .fontWeight(.heavy)
                .padding()

        }

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

struct BoxSubView: View {
    
    @Binding var themes: [Theme]
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                    .font(.body)
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
                    .frame(alignment: .center)
                LazyVGrid(columns: [
                    .init(),
                    .init(),
                    .init()
                ], content: {
                    
                    ForEach(themes) { theme in
                        NavigationLink(
                            destination: ThemeView(theme: theme),
                            label: {
                                BoxListItem(theme: theme)
                                    .navigationBarTitle("Themes", displayMode: .large)
                                
                            })
                        
                    }
                })
            }
        }
        .padding()
    }
}
