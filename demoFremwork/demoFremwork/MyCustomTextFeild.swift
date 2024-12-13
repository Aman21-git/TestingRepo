//
//  MyCustomTextFeild.swift
//  demoFremwork
//
//  Created by Arvaan Technolab on 12/12/24.
//

import Foundation
import UIKit

@IBDesignable public class MyCustomTextFeild : UITextField {
    
    @IBInspectable var borderColor : UIColor = .clear {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var borderWidth : CGFloat = 15 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        // Apply background color when button is initialized programmatically
       
    }

    // Overriding required init(coder:) to apply background color when loaded from storyboard
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        // Apply background color when button is loaded from storyboard
       
    }

    // Overriding awakeFromNib to ensure button setup is done correctly when loaded from storyboard
    public override func awakeFromNib() {
        super.awakeFromNib()
        setupButton()
    }

    // This method is called when the button is loaded from the storyboard
    func setupButton() {
        // Ensure the background color is set when the button is loaded
        self.backgroundColor = borderColor
        
    }
    
}
