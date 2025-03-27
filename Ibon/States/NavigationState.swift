//
//  NavigationState.swift
//  Ibon
//
//  Created by Jesse Panganiban on 3/28/25.
//

import SwiftUI

/**
 States/NavigationState: Stores the current state of the navigation pop-up.
 */
class NavigationState: ObservableObject {
    @Published var selectedTab: Int?
    @Published var selectedDate: Date?
    @Published var selectedAccount: Int?
}
