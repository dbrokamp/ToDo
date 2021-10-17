//
//  ThemeView.swift
//  ToDo
//
//  Created by Drew Brokamp on 8/18/21.
//

import SwiftUI

struct GoalView: View {
    
    var theme: Theme
    
    var body: some View {
        
        
        VStack {
            Spacer()
                .frame(height: 10) 
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                .font(.body)
                .padding(.top, 10)
                .padding(.leading, 10)
                .padding(.trailing, 10)
                .frame(alignment: .center)

            LazyVGrid(columns: [
                .init(),
                .init(),
                .init()
            ], content: {
                
                ForEach(theme.goals!) { goal in
                    NavigationLink(
                        destination: TaskView(goal: goal),
                        label: {
                            GoalListItem(goal: goal)
                                .navigationBarTitle("Goals")
                        })
                    
                }
            })
            .padding()
            Spacer()
        }
        
        
        
    }
    
}

struct GoalListItem: View {
    
    var goal: Goal
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            RoundedRectangle(cornerRadius: 10.0)
                .fill(
                    RadialGradient(gradient: Gradient(colors: [.black, .purple]), center: .bottomLeading, startRadius: 3, endRadius: 200)
                )
                .frame(idealWidth: 100, maxWidth: .infinity, idealHeight: 100, maxHeight: .infinity, alignment: .bottomLeading)
            Text(goal.name)
                .foregroundColor(.white)
                .fontWeight(.heavy)
                .padding()
            
        }
        
    }
    
}

struct ThemeView_Previews: PreviewProvider {
    

    
    static var previews: some View {
        GoalView(theme: Theme(name: "Work", goals: [Goal(name: "Work1")]))
    }
}
