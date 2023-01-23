//
//  ViewController.swift
//  Practical Animation
//
//  Created by Arda Toprak on 23.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var animatableView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        /*
        UIView.animate(withDuration: 2) {
            self.animatableView.backgroundColor = .red
            self.animatableView.frame = CGRect(x: 100, y: 300, width: 70, height: 40)
        } */
        
        /*
        UIView.animate(withDuration: 2) {
            self.animatableView.backgroundColor = .red
        } completion: { _ in
            // Animasyon tamamlandıktan sonra çalışır.
            UIView.animate(withDuration: 1) {
                self.animatableView.frame = CGRect(x: 100, y: 300, width: 70, height: 40)
            }
        }*/
        UIView.animate(withDuration: 2, delay: 3,options: [.repeat], animations: {
            self.animatableView.backgroundColor = .red
            self.animatableView.frame = CGRect(x: 100, y: 300, width: 70, height: 40)
        }, completion: nil)
    }
        
}

