//
//  TaskPriority.swift
//  SwiftUITaskManager
//
//  Created by Erez Mizrahi on 14/11/2019.
//  Copyright © 2019 Erez Mizrahi. All rights reserved.
//

extension Task {
    enum Priority: String, CaseIterable {
        case none
        case low
        case medium
        case high
    }
}
