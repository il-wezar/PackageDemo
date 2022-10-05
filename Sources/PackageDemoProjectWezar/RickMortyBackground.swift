//
//  RickMortyBackground.swift
//  PackageDemoProjWezar
//
//  Created by Illia Wezarino on 05.10.2022.
//


import UIKit


public struct RickMortyBackgorund {
    public enum styleOfBlure: Int  {
        case extraLight = 0
        case light = 1
        case dark = 2
        case regular = 4
        case prominent = 5
    }
    
    public init() {
    }
    
    public func RickMortyBackground(view: UIView, styleOfBlure: styleOfBlure ) {
        
        let image = UIImage(named: "RickMorty.jpg")
        
        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = image
        imageView.center = view.center
        view.addSubview(imageView)
        view.sendSubviewToBack(imageView)

        let backgroundBlurView = UIVisualEffectView(effect: UIBlurEffect(style: UIBlurEffect.Style(rawValue: styleOfBlure.rawValue) ?? .regular))
        backgroundBlurView.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
        view.addSubview(backgroundBlurView)
        
    }
}
