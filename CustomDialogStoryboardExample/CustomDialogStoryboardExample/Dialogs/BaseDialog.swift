//
//  BaseDialog.swift
//  CustomDialogStoryboardExample
//
//  Created by Alexandre Oliveira on 19/11/20.
//  Copyright © 2020 Alexandre Oliveira. All rights reserved.
//

import Foundation
import UIKit

class BaseDialog: UIView {
    
    static let shared = BaseDialog()
    
    private let dialog: UIView = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func commonInit() {
        self.frame = CGRect(
            x: 0,
            y: 0,
            width: UIScreen.main.bounds.width,
            height: UIScreen.main.bounds.height)
        self.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        self.backgroundColor = UIColor.black.withAlphaComponent(0.4)
        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(dismiss)))
        
        dialog.backgroundColor = .white
        
        self.addSubview(dialog)
        
        dialog.translatesAutoresizingMaskIntoConstraints = false
        dialog.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        dialog.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        dialog.widthAnchor.constraint(equalToConstant: 280).isActive = true
    }
    
    func showAlert(view: UIView) {
        
        dialog.addSubview(view)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        view.topAnchor.constraint(equalTo: dialog.topAnchor, constant: 0).isActive = true
        view.trailingAnchor.constraint(equalTo: dialog.trailingAnchor, constant: 0).isActive = true
        view.bottomAnchor.constraint(equalTo: dialog.bottomAnchor, constant: 0).isActive = true
        view.leadingAnchor.constraint(equalTo: dialog.leadingAnchor, constant: 0).isActive = true
        
//        UIApplication.shared.windows.first { $0.isKeyWindow }
        UIApplication.shared.keyWindow?.addSubview(self)
    }
    
    @objc func dismiss() {
        dismissAlert()
    }
    
    func dismissAlert() {
        self.removeFromSuperview()
    }
}
