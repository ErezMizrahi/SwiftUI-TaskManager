//
//  Task.swift
//  SwiftUITaskManager
//
//  Created by Erez Mizrahi on 13/11/2019.
//  Copyright © 2019 Erez Mizrahi. All rights reserved.
//

import Foundation

struct Task: Identifiable{
    let id = UUID()
    var name: String
    var isCompleted: Bool = false
}
