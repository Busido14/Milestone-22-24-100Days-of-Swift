//
//  ViewController.swift
//  Milestone 22-24
//
//  Created by Артем Чжен on 16/05/23.
//

import UIKit
extension UIView {
    func bounceOut(duration: TimeInterval) {
        UIView.animate(withDuration: duration) {
            self.transform = CGAffineTransform(scaleX: 0.0001, y: 0.0001)
        }
    }
}

extension Int {
    func times(_ closure: () -> ()) {
        for _ in 0..<self {
            closure()
        }
    }
}

extension Array where Element: Comparable {
    mutating func remove(item: Element) -> () {
        if let i = self.firstIndex(of: item) {
            self.remove(at: i)
        }
    }
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cyanView = UIView(frame: CGRect(x: 100, y: 300, width: 200, height: 200))
        cyanView.backgroundColor = UIColor.cyan
        cyanView.layer.cornerRadius = 100
        cyanView.bounceOut(duration: 4)
        view.addSubview(cyanView)
    
        5.times {
            print("Hello!")
            
            var arrayOfNumbers = [1, 2, 3, 4, 5, 6, 3, 2, 1]
            arrayOfNumbers.remove(item: 3)
            print(arrayOfNumbers)
        }
    }
}



