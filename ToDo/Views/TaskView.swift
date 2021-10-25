//
//  TaskView.swift
//  ToDo
//
//  Created by Drew Brokamp on 10/17/21.
//

import SwiftUI

struct TaskView: View {
    
    var goal: Goal
    
    var body: some View {
        
        VStack {
            List {

                    ForEach(goal.tasks!) { task in
                        Text(task.description)
                            .navigationTitle("\(goal.name) Tasks")
                }

                
            }
        }
    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView(goal: Goal(name: "Goal1", tasks: [Task(description: "This is a task"), Task(description: "This is another task")]))
    }
}
