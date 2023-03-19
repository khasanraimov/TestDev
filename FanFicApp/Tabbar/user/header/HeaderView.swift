//
//  HeaderView.swift
//  FanFicApp
//
//  Created by khasan on 19.03.2023.
//

import UIKit

class HeaderView: UIView {
    
    static func instantiate() -> HeaderView {
        
        let view: HeaderView = initFromNib()
        return view
        
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}

extension UIView {
    
    class func initFromNib<T: UIView>() -> T {
        return Bundle.main.loadNibNamed(String(describing: self), owner: nil, options: nil)?[0] as! T
    }
    
}
