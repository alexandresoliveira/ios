//
//  ViewController.swift
//  CardApp
//
//  Created by Alexandre Salvador de Oliveira on 13/01/2018.
//  Copyright © 2018 Alexandre Salvador de Oliveira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var purpleView: UIView!
    @IBOutlet weak var blueView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addCardViews()
        addActionViews()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    private func addCardViews() {
        let margins = scroll.layoutMarginsGuide
        var lastCardView: CardView? = nil
        for _ in 0...8 {
            let cardView: CardView = CardView()
            cardView.backgroundColor = UIColor.white
            scroll.addSubview(cardView)
            cardView.translatesAutoresizingMaskIntoConstraints = false
            cardView.heightAnchor.constraint(equalToConstant: 150).isActive = true
            cardView.widthAnchor.constraint(equalToConstant: scroll.bounds.width - 32).isActive = true
            cardView.centerXAnchor.constraint(equalTo: margins.centerXAnchor).isActive = true
            if lastCardView != nil {
                cardView.topAnchor.constraint(equalTo: (lastCardView?.bottomAnchor)!, constant: 16.0).isActive = true
            } else {
                cardView.topAnchor.constraint(equalTo: scroll.topAnchor, constant: 8.0).isActive = true
            }
            lastCardView = cardView
        }
        let newHeightScroll: CGFloat = 150.0 * 10
        scroll.contentSize = CGSize(width: scroll.bounds.width, height: newHeightScroll)
    }
    
    private func addActionViews() {
        let tapG = UITapGestureRecognizer(target: self, action: #selector(ViewController.tapGreen))
        greenView.addGestureRecognizer(tapG)
        let tapP = UITapGestureRecognizer(target: self, action: #selector(ViewController.tapPurple))
        purpleView.addGestureRecognizer(tapP)
        let tapB = UITapGestureRecognizer(target: self, action: #selector(ViewController.tapBlue))
        blueView.addGestureRecognizer(tapB)
    }
    
    @objc func tapGreen() {
        alert("Green Tap")
    }
    
    @objc func tapPurple() {
        alert("Purple Tap")
    }
    
    @objc func tapBlue() {
        alert("Blue Tap")
    }
    
    private func alert(_ msg: String) {
        let alert = UIAlertController(title: "Alert", message: msg, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}

