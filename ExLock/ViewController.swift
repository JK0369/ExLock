//
//  ViewController.swift
//  ExLock
//
//  Created by 김종권 on 2023/04/30.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
//        example1()
//        example2()
        example3()
    }
    
func example1() {
    let lock = NSLock()

    DispatchQueue.global().async {
        lock.lock()
        print("Thread 1 is in critical section")
        lock.unlock()
    }

    DispatchQueue.global().async {
        lock.lock()
        print("Thread 2 is in critical section")
        lock.unlock()
    }
}
    
func example2() {
    let recursiveLock = NSRecursiveLock()

    func recursiveFunction(count: Int) {
        recursiveLock.lock()
        if count > 0 {
            print("Count is \(count)")
            recursiveFunction(count: count - 1)
        }
        recursiveLock.unlock()
    }

    recursiveFunction(count: 3)
}
    
func example3() {
    let recursiveLock = NSLock()

    func recursiveFunction(count: Int) {
        recursiveLock.lock()
        if count > 0 {
            print("Count is \(count)")
            recursiveFunction(count: count - 1)
        }
        recursiveLock.unlock()
    }

    recursiveFunction(count: 3)
}
}
