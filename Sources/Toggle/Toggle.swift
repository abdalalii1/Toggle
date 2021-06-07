//
//  Toggleable.swift
//
//
//  Created by Abdel Ali on 06/06/21.
//

import SwiftUI

protocol Toggleable {
    associatedtype ValueType
    var on: ValueType { get set }
    var off: ValueType { get set }
    func value(state: Bool) -> ValueType
}

struct Toggle<T>: Toggleable {
    var on: T
    var off: T

    func value(state: Bool) -> T {
        state ? on : off
    }
}

extension Binding where Value: Toggleable {
    var onValue: Binding<Value.ValueType> {
        return Binding<Value.ValueType> {
            wrappedValue.on
        } set: { newValue in
            wrappedValue.on = newValue
        }
    }

    var offValue: Binding<Value.ValueType> {
        return Binding<Value.ValueType> {
            wrappedValue.off
        } set: { newValue in
            wrappedValue.off = newValue
        }
    }
}
