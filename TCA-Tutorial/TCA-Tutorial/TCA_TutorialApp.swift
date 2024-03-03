//
//  TCA_TutorialApp.swift
//  TCA-Tutorial
//
//  Created by 林悠斗 on 2024/03/02.
//

import ComposableArchitecture
import SwiftUI

@main
struct TCA_TutorialApp: App {
    static let store = Store(initialState: CounterFeature.State()) {
        CounterFeature()
    }

    var body: some Scene {
        WindowGroup {
            ContentView(store: TCA_TutorialApp.store)
        }
    }
}
