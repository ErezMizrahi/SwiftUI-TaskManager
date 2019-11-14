//
//  RowView.swift
//  SwiftUITaskManager
//
//  Created by Erez Mizrahi on 13/11/2019.
//  Copyright © 2019 Erez Mizrahi. All rights reserved.
//

import SwiftUI

struct RowView: View {
    @Binding var task : Task
    let checkMark = Image(systemName: "checkmark")
    
    var body: some View {
        NavigationLink(destination: TaskEditingView(task: $task)) {
            if task.isCompleted {
                checkMark
            } else {
                checkMark.hidden()
            }
            Text(task.name)
                .strikethrough(task.isCompleted)
        }

    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(task: .constant(Task(name: "to Do")))
    }
}
