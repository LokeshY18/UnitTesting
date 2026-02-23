//
//  UnitTestingViewModel.swift
//  UnitTesting
//
//  Created by Lokesh Yarashi on 18/02/26.
//

import Foundation
import Combine
import SwiftUI

class UnitTestingViewModel: ObservableObject {
    @Published var tasks: [String] = [
        "Fist Task",
        "Second Task",
        "Third Task"
    ]
    
    func addItems(task: String) {
        tasks.append(task)
    }
}
