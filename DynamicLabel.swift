//
//  DynamicLabel.swift
//  project1
//
//  Created by Rishabh on 08/09/17.
//  Copyright © 2017 Mac4. All rights reserved.
//

import Foundation
import UIKit

class DynamicLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func willMove(toSuperview newSuperview: UIView?) {
        self.makeWithDynamicHeight()
    }
    
    func makeWithDynamicHeight() {
        self.numberOfLines = 0
        let newHeight = self.calculateStringHeight(mytext: self.text!, fontSize: self.font.pointSize, width: self.bounds.width)
        self.bounds = CGRect(x: 0, y: 0, width: self.bounds.width, height: newHeight)
    }
    
    private func calculateStringHeight(mytext: String, fontSize: CGFloat, width: CGFloat)->CGFloat {
        let font = UIFont.systemFont(ofSize: fontSize)
        let size = CGSize(width: width, height: .greatestFiniteMagnitude)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineBreakMode = .byWordWrapping
        let attributes = [NSFontAttributeName:font, NSParagraphStyleAttributeName:paragraphStyle.copy()]
        let text = mytext as NSString
        let rect = text.boundingRect(with: size, options:.usesLineFragmentOrigin, attributes: attributes, context:nil)
        return rect.size.height
    }
    
}
