//
//  VBStack.swift
//  
//
//  Created by Donny Cheng on 12/10/17.
//

import Foundation

class VBStack<T> {
    private var array: [T]? = []
    public var count: Int {
        get {
            return (self.array?.count)!
        }
    }
    public var isEmpty: Bool {
        get {
            return (self.array?.isEmpty)!
        }
    }
    public var description: String? {
        return (self.array?.description)!
    }
    
    init() {
        self.array = Array<T>()
    }
    init(elements: Array<T>) {
        self.array = elements
    }
    
    func push(element: T){
        self.array?.append(element)
    }
    
    func push(elements: [T]) {
        self.array?.append(contentsOf: elements)
    }
    
    func pop() -> T? {
        // last elements in the array is the top element in the stack
        // which will be popped first
        if self.isEmpty {
            return nil
        }
        let lastElement = self.peek()
        self.array?.removeLast()
        return lastElement
    }
    
    func peek() -> T? {
        if self.isEmpty {
            return nil
        }
        return (self.array?.last)
    }
    
    func clear() {
        self.array?.removeAll(keepingCapacity: false)
    }
    
}
