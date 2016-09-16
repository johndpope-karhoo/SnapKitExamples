//
//  TAACompositeEdgesView.swift
//  SnapKitExamples
//
//  Created by Ivana Rast on 02/08/15.
//  Copyright (c) 2015 Ivana Rast. All rights reserved.
//

import UIKit

class TAACompositeEdgesView: UIView {

    private let kInsets = UIEdgeInsetsMake(5, 10, 15, 20)
    
    //MARK: - Life cycle
    
    override init(frame aRect: CGRect) {
        super.init(frame: aRect)
        
        self.backgroundColor = UIColor.whiteColor()
        
        self.initializeElements()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    //MARK: - Private methods
    
    //MARK: Initialize elements and set constraints
    
    private func initializeElements() {
        
        var lastView: UIView = self
        
        for _ in 0...9 {
            let view = self.initializeView()
            self.addSubview(view)
            
            view.snp_makeConstraints{ (make) -> Void in
                make.edges.equalTo(lastView).inset(kInsets)
            }
            lastView = view
        }
    }
    
    //MARK: Initialize view
    
    private func initializeView() -> UIView {
        let view = UIView()
        view.backgroundColor = UIColor.randomColor()
        view.layer.borderColor = UIColor.blackColor().CGColor
        view.layer.borderWidth = 2
        
        return view
    }
}
