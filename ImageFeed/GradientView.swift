//
//  GradientView.swift
//  ImageFeed
//
//  Created by Дмитрий Бучнев on 08.11.2023.
//

import Foundation
import UIKit

final class GradientView: UIView {
    
    private let gradientLayer = CAGradientLayer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupGradient()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = bounds
    }
    
    private func setupGradient() {
        self.layer.addSublayer(gradientLayer)
        gradientLayer.colors = [getColorRgb(red: 174, green: 175, blue: 180, alpha: 0.3).cgColor, getColorRgb(red: 174, green: 175, blue: 180, alpha: 1).cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
    }
    
    private func getColorRgb(red: Float, green: Float, blue: Float, alpha: Float) -> UIColor {
        let redComponent: CGFloat = CGFloat(red / 255.0)
        let greenComponent: CGFloat = CGFloat(green / 255.0)
        let blueComponent: CGFloat = CGFloat(blue / 255.0)
        return UIColor(red: redComponent, green: greenComponent, blue: blueComponent, alpha: CGFloat(alpha))
    }
}
