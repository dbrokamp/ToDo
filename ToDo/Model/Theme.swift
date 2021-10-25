//
//  Theme.swift
//  ToDo
//
//  Created by Drew Brokamp on 8/18/21.
//

import Foundation

let data = [Theme(name: "Work", goals: [Goal(name: "Work Goal1", tasks: [Task(description: "Work Task1")]), Goal(name: "Work Goal2", tasks: [Task(description: "Work Task1")])]),
            Theme(name: "Creative", goals: [Goal(name: "Goal1", tasks: [Task(description: "Task1")]), Goal(name: "Goal2", tasks: [Task(description: "Task1")])]),
            Theme(name: "Health", goals: [Goal(name: "Goal1", tasks: [Task(description: "Task1")]), Goal(name: "Goal2", tasks: [Task(description: "Task1")])]),
            Theme(name: "Education", goals: [Goal(name: "Goal1", tasks: [Task(description: "Task1")]), Goal(name: "Goal2", tasks: [Task(description: "Task1")])]),
            Theme(name: "Financial", goals: [Goal(name: "Goal1", tasks: [Task(description: "Task1")]), Goal(name: "Goal2", tasks: [Task(description: "Task1")])])]

class Data: ObservableObject {
    @Published var userThemes: [Theme]
    
    init(themes: [Theme]) {
        userThemes.self = themes
    }
}


struct Theme: Identifiable {
    let id = UUID()
    
    var name: String
    var goals: [Goal]

    init(name: String, goals: [Goal]) {
        self.name = name
        self.goals = goals
    }
}

struct Goal: Identifiable {
    let id = UUID()
    var name: String
    var tasks: [Task]?
}

struct Task: Identifiable {
    let id = UUID()
    var description: String
}
