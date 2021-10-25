//
//  ToDoApp.swift
//  ToDo
//
//  Created by Drew Brokamp on 8/18/21.
//

import SwiftUI

@main
struct ToDoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(userData: Data(themes: [Theme(name: "Work", goals: [Goal(name: "Work Goal1", tasks: [Task(description: "Work Task1")]), Goal(name: "Work Goal2", tasks: [Task(description: "Work Task1")])])]))
        }
    }
}
