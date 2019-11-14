//
//  TextEditingView.swift
//  SwiftUITaskManager
//
//  Created by Erez Mizrahi on 13/11/2019.
//  Copyright © 2019 Erez Mizrahi. All rights reserved.
//

import SwiftUI

struct TaskEditingView: View {
    @Binding var task: Task
    var body: some View {
        Form {
            TextField("Name", text: $task.name)
            Toggle("Completed", isOn: $task.isCompleted)
        }
    }
}

struct TaskEditingView_Previews: PreviewProvider {
    static var previews: some View {
        TaskEditingView(task: .constant(Task(name: "todo")))
    }
}
