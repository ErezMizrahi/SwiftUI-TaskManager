//
//  ContentView.swift
//  SwiftUITaskManager
//
//  Created by Erez Mizrahi on 13/11/2019.
//  Copyright © 2019 Erez Mizrahi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var taskStore: TaskStore
    @State var isModelPresented = false
    
    var body: some View {
        NavigationView {
            List{
                ForEach(taskStore.tasks.indices) { index in
                    RowView(task: self.$taskStore.tasks[index])
                }
                .onMove { sourceIndices , destinationIndex in
                    self.taskStore.tasks.move(fromOffsets: sourceIndices, toOffset: destinationIndex)
                }
                .onDelete { indexSet in
                    self.taskStore.tasks.remove(atOffsets: indexSet)
                }
            }
            .navigationBarTitle("TaskManager")
                .navigationBarItems(
                    leading: EditButton(),
                    trailing: Button(action: {
                    self.isModelPresented = true
                }) {
                    Image(systemName: "plus")
            })
            
        }
        .sheet(isPresented: $isModelPresented) {
            NewTaskView(taskStore: self.taskStore)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(taskStore: TaskStore())
    }
}

