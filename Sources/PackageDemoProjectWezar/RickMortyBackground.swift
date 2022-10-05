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
        
//        let image = UIImage(named: "RickMorty"
    
        let url = URL(string: "https://globalnews.ca/wp-content/uploads/2022/09/MicrosoftTeams-image-16.jpg?w=2048")
        
        DispatchQueue.global().async {
            let data = try? Data(contentsOf: url!)
            DispatchQueue.main.async {
                let image = UIImage(data: data!)
                let backgroundImageView = UIImageView(frame: view.bounds)
                backgroundImageView.contentMode = .scaleAspectFill
                backgroundImageView.image = image!
                backgroundImageView.clipsToBounds = true
                view.addSubview(backgroundImageView)
                let backgroundBlurView = UIVisualEffectView(effect: UIBlurEffect(style: UIBlurEffect.Style(rawValue: styleOfBlure.rawValue) ?? .regular))
                backgroundBlurView.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
                view.addSubview(backgroundBlurView)
            }
        }
        
    }
}
