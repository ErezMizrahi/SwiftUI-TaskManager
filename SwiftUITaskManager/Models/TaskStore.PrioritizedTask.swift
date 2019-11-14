//
//  TaskStore.PrioritizedTask.swift
//  SwiftUITaskManager
//
//  Created by Erez Mizrahi on 14/11/2019.
//  Copyright © 2019 Erez Mizrahi. All rights reserved.
//

extension TaskStore {
    struct PrioritizedTask {
         let priority: Task.Priority
           var tasks: [Task]
    }
   
}


extension TaskStore.PrioritizedTask: Identifiable {
    var id: Task.Priority { priority }
}
