//
//  GoalView.swift
//  ToDo
//
//  Created by Drew Brokamp on 8/21/21.
//

import SwiftUI

struct GoalView: View {
    
 
    
    var body: some View {
        
        NavigationView {
            
       
            
        }
        
    }
}

struct GoalView_Previews: PreviewProvider {
    
    static var theme = Theme(name: "Theme", goals: [Goal(name: "Goals", tasks: [Task(description: "Task1")]), Goal(name: "Goal2", tasks: [Task(description: "Task1")])])
    
    static var previews: some View {
        GoalView()
    }
}
