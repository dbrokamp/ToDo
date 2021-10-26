//
//  ContentView.swift
//  ToDo
//
//  Created by Drew Brokamp on 8/18/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var userData: Data
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
                    .sheet(isPresented: $isAddNewThemeActive, onDismiss: { didDimiss() }, content: { AddNewThemeModal(isAddNewThemeActive: $isAddNewThemeActive) })
            }
            
            NavigationView {
                BoxSubView(themes: userData.userThemes)
                
            }
            
        }
        
    }
    
    
    func didDimiss() {
        print("Dismissed the add new theme modal")
    }
}


struct BoxListItem: View {
    
    var name: String
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            RoundedRectangle(cornerRadius: 10.0)
                .fill(
                    RadialGradient(gradient: Gradient(colors: [.black, .purple]), center: .bottomLeading, startRadius: 3, endRadius: 200)
                )
                .frame(idealWidth: 100, maxWidth: .infinity, idealHeight: 100, maxHeight: .infinity, alignment: .bottomLeading)
            Text(name)
                .foregroundColor(.white)
                .fontWeight(.heavy)
                .padding()
            
        }
        
    }
    
}

struct BoxSubView: View {
    
    var themes: [Theme]
    
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
                            destination: GoalView(theme: theme),
                            label: {
                                BoxListItem(name: theme.name)
                                    .navigationBarTitle("Themes", displayMode: .large)
                                
                            })
                        
                    }
                })
            }
        }
        .padding()
    }

        
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(userData: Data(themes: [Theme(name: "Work", goals: [Goal(name: "Work Goal1", tasks: [Task(description: "Work Task1")]), Goal(name: "Work Goal2", tasks: [Task(description: "Work Task1")])])]))
        
    }
}

