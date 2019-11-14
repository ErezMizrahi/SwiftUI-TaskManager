//
//  NewTaskView.swift
//  SwiftUITaskManager
//
//  Created by Erez Mizrahi on 13/11/2019.
//  Copyright © 2019 Erez Mizrahi. All rights reserved.
//

import SwiftUI

struct NewTaskView: View {
    @State var text = ""
    @State var priority: Task.Priority = .none
    
    @Environment(\.presentationMode) var presentationMode
    
    var taskStore: TaskStore
    
    var body: some View {
        Form{
            TextField("Task Name", text: $text)
            
            VStack {
                Text("Priority")
                Picker("priority", selection: $priority.caseIndex) {
                    ForEach(Task.Priority.allCases.indices) { index in
                       Text( Task.Priority.allCases[index].rawValue
                                          .capitalized )
                        .tag(index)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            
            Button("Add") {
                
                let index = self.taskStore.getIndex(for: self.priority)
                self.taskStore.prioritizedTask[index].tasks.append(Task(name:self.text))
                
                self.presentationMode.wrappedValue.dismiss()
            }
            .disabled(text.isEmpty)
            
        }

    }
}

struct NewTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskView(taskStore: TaskStore())
    }
}
