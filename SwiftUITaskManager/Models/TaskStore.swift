//
//  TaskStore.swift
//  SwiftUITaskManager
//
//  Created by Erez Mizrahi on 13/11/2019.
//  Copyright © 2019 Erez Mizrahi. All rights reserved.
//

import Foundation
import Combine

class TaskStore: ObservableObject {
    @Published var prioritizedTask = [
        PrioritizedTask(priority: .high
            , names: [
                "learn SwiftUI",
                "learn SwiftUI",
                "learn SwiftUI",
                "learn SwiftUI",
                "learn SwiftUI"
                ]),
        PrioritizedTask(priority: .medium
        , names: [
            "learn SwiftUI",
            "learn SwiftUI",
            "learn SwiftUI",
            "learn SwiftUI",
            "learn SwiftUI"
            ]),
        PrioritizedTask(priority: .low
        , names: [
            "learn SwiftUI",
            "learn SwiftUI",
            "learn SwiftUI",
            "learn SwiftUI",
            "learn SwiftUI"
            ]),
        PrioritizedTask(priority: .none
        , names: [
            "learn SwiftUI",
            "learn SwiftUI",
            "learn SwiftUI",
            "learn SwiftUI",
            "learn SwiftUI"
            ])
    ]
    
    
    func getIndex(for priority: Task.Priority) -> Int {
        prioritizedTask.firstIndex {
            $0.priority == priority
        }!
      
    }
}


private extension TaskStore.PrioritizedTask {
    init(priority: Task.Priority, names: [String]) {
        self.init(
            priority: priority,
            tasks: names.map{ Task(name: $0) }
        )
    }
}
