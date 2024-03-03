//
//  ContentView.swift
//  TCA-Tutorial
//
//  Created by 林悠斗 on 2024/03/02.
//

import ComposableArchitecture
import SwiftUI

struct ContentView: View {
    let store: StoreOf<CounterFeature>

    var body: some View {
        HStack {
            Button("-"){
                store.send(.decrementButtonTapped)
            }
            Text("\(store.count)")
            Button("+"){
                store.send(.incrementButtonTapped)
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView(store: Store(initialState: CounterFeature.State()) {
        CounterFeature()
    })
}
