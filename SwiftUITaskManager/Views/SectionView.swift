//
//  SectionView.swift
//  SwiftUITaskManager
//
//  Created by Erez Mizrahi on 14/11/2019.
//  Copyright © 2019 Erez Mizrahi. All rights reserved.
//

import SwiftUI

struct SectionView: View {
    @Binding var prioritzedTask: TaskStore.PrioritizedTask
    
    var body: some View {
        Section(
            header: Text("\(prioritzedTask.priority.rawValue.capitalized) Priority")
        ) {
        ForEach(prioritzedTask.tasks) { index in
               RowView(task: self.$prioritzedTask.tasks[index])
             }
             .onMove { sourceIndices, destinationIndex in
               self.prioritzedTask.tasks.move(
                 fromOffsets: sourceIndices,
                 toOffset: destinationIndex
               )
             }
             .onDelete { indexSet in
               self.prioritzedTask.tasks.remove(atOffsets: indexSet)
             }
        }
    }
}

