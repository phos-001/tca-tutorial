//
//  CouterFeature.swift
//  TCA-Tutorial
//
//  Created by 林悠斗 on 2024/03/02.
//

import ComposableArchitecture

@Reducer
struct CounterFeature {
    @ObservableState
    struct State {
        var count = 0
    }
    
    enum Action {
        case decrementButtonTapped
        case incrementButtonTapped
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .decrementButtonTapped:
                state.count -= 1
                return .none
            case .incrementButtonTapped:
                state.count += 1
                return .none
            }
        }
    }
}
