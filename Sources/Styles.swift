//
//  Styles.swift
//  ShoppingStyles
//
//  Created by Sergei Perevoznikov on 08/01/2017.
//  Copyright © 2017 Sergei Perevoznikov. All rights reserved.
//

public class Styles {
    
    public var yellow: UIColor {
        return Colors.rgb(red: 252, green: 211, blue: 37)
    }
    
    public var black: UIColor {
        return Colors.rgb(red: 75, green: 75, blue: 75)
    }
    
    public var white: UIColor {
        return Colors.rgb(red: 246, green: 247, blue: 249)
    }
    
    public var red: UIColor {
        return Colors.rgb(red: 255, green: 91, blue: 104)
    }
    
    public var blue: UIColor {
        return Colors.rgb(red: 102, green: 204, blue: 255)
    }
    
    public var green: UIColor {
        return Colors.rgb(red: 61, green: 188, blue: 147)
    }
    
    public init() {
        register(font: "SanFranciscoText-Bold.otf")
        register(font: "SanFranciscoText-Light.otf")
        register(font: "SanFranciscoText-Medium.otf")
        register(font: "SanFranciscoText-Regular.otf")
        register(font: "SanFranciscoText-Semibold.otf")
    }
    
    private func register(font name: String) {
        let bundle = Bundle(for: Styles.self)
        guard let url = bundle.url(forResource: name, withExtension: nil) else { return }
        guard let data = try? Data(contentsOf: url) else { return }
        guard let provider = CGDataProvider(data: data as CFData) else { return }
        let font = CGFont(provider)
        var error: Unmanaged<CFError>? = nil
        if !CTFontManagerRegisterGraphicsFont(font, &error) {
            print("font \(name) loading failed")
            if let error = error?.takeRetainedValue() {
                let errorDescription = CFErrorCopyDescription(error)
                print("\(errorDescription)")
            }
        }
    }
    
    public func bold(size: CGFloat = 14) -> UIFont? {
        return UIFont(name: "SanFranciscoText-Bold", size: size)
    }
    
    public func light(size: CGFloat = 14) -> UIFont? {
        return UIFont(name: "SanFranciscoText-Light", size: size)
    }
    
    public func medium(size: CGFloat = 14) -> UIFont? {
        return UIFont(name: "SanFranciscoText-Medium", size: size)
    }
    
    public func regular(size: CGFloat = 14) -> UIFont? {
        return UIFont(name: "SanFranciscoText-Regular", size: size)
    }
    
    public func semibold(size: CGFloat = 14) -> UIFont? {
        return UIFont(name: "SanFranciscoText-Semibold", size: size)
    }
    
}
