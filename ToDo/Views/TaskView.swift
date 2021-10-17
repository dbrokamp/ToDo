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
            Text(goal.name)
            Text("Task Lisk")
            List {
                ForEach(goal.tasks!) { task in
                    Text(task.description)
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
