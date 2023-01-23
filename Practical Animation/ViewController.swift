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
        /*
         UIView.animate(withDuration: 2, delay: 3,options: [.repeat], animations: {
         self.animatableView.backgroundColor = .red
         self.animatableView.frame = CGRect(x: 100, y: 300, width: 70, height: 40)
         }, completion: nil) */
        // applyScaleTransformation()
        // applyRotationTransformation()
        // applyTranslateTransformation()
        applyComplexTransform()
    }
    // Transform: Arayüz elemanları üzerinde scale, rotate translate gibi
    // değişiklikler yapılmasını sağlayan property dir
    
    
    func applyScaleTransformation() {
        // Transform uygulanacak arayüz elemanının genişlik ve yükseklik bilgisini iki katına çıkarır.
        let scaleTransform = CGAffineTransform(scaleX: 2.0, y: 2.0)
        
        UIView.animate(withDuration: 2) {
            self.animatableView.transform = scaleTransform
            
            // butona basınca büyümesini küçülmesini veya elimizle butonu sağa sola kaydırmak fln
        }
    }
    func applyRotationTransformation() {
        // Transform uygulanacak arayüz elemanını saat yönünde 180 derece döndürülmesini sağlar.
        // 90 derece için pi/2 veya -pi/2
        let rotationTransform = CGAffineTransform(rotationAngle: .pi)
        
        UIView.animate(withDuration: 2) {
            self.animatableView.transform = rotationTransform
            
            // butona basınca büyümesini küçülmesini veya elimizle butonu sağa sola kaydırmak fln
        }
    }
    func applyTranslateTransformation() {
        // Transform uygulancak arayüz elemanının x ekseninde 100 birim y ekseninde 50 birim değişim uygulanır.
        let translationTransform = CGAffineTransform(translationX: 100, y: 50)
        
        UIView.animate(withDuration: 2) {
            self.animatableView.transform = translationTransform
            
        }
        
    }
    
    func applyComplexTransform() {
        let scaleTransform = CGAffineTransform(scaleX: 2.0, y: 2.0)
        let rotationTransform = CGAffineTransform(rotationAngle: .pi)
        let translationTransform = CGAffineTransform(translationX: 100, y: 50)
        
        let comboTransform = scaleTransform.concatenating(rotationTransform).concatenating(translationTransform)
        
        /*
        UIView.animate(withDuration: 2) {
            self.animatableView.transform  = comboTransform
        }*/
        
        UIView.animate(withDuration: 2) {
            self.animatableView.transform  = comboTransform
        } completion: { _ in
            // identity, animasyonlar uygulanmadan önceki özelliklerini belirtir.
            
            UIView.animate(withDuration: 1) {
                self.animatableView.transform = .identity

            }
        }

    }
}
