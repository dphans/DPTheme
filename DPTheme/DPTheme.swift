//
//  DPTheme.swift
//  DPTheme
//
//  Created by @baophan94 on 6/24/15.
//  Copyright (c) 2015 @baophan94. All rights reserved.
//  Feel free to contact me baophan94@icloud.com or www.dinophan.com 😋
//

import UIKit

class DPTheme: NSObject {
    
    static let kDefaultNavigationBarFontSize: CGFloat = 22
    static let kDefaultTabBarFontSize: CGFloat = 14
    
    
    // This method I found on: https://github.com/nghialv/MaterialKit
    
    internal static func color(hex: Int, alpha: CGFloat = 1.0) -> UIColor {
        let red = CGFloat((hex & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((hex & 0xFF00) >> 8) / 255.0
        let blue = CGFloat((hex & 0xFF)) / 255.0
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    
    // Global theme
    internal static func setupTheme(
        maincolor: UIColor,
        secondaryColor: UIColor,
        fontName: String,
        lightStatusBar: Bool) {
            
            if (lightStatusBar) {
                UIApplication.sharedApplication().setStatusBarStyle(
                    .LightContent, animated: false)
            }
            
            self.customizeNavigationBar(maincolor, textColor: secondaryColor, fontName: fontName, fontSize: kDefaultNavigationBarFontSize, buttonColor: secondaryColor)
            self.customizeTabBar(maincolor, textColor: secondaryColor, fontName: fontName, fontSize: kDefaultTabBarFontSize)
            self.customizeSwitch(maincolor)
            self.customizeSearchBar(maincolor, tintColor: secondaryColor)
            self.customizeActivityIndicator(maincolor)
            self.customizeButton(maincolor)
            self.customizeSegmentedControl(maincolor, secondaryColor: secondaryColor)
            self.customizeSlider(maincolor)
            self.customizePageControl(maincolor)
            self.customizeToolbar(maincolor)
            self.customizeTableView(maincolor)
            self.customizeProgress(maincolor)
    }
    
    // UITableView
    internal static func customizeTableView(tintColor: UIColor) {
        UITableView.appearance().tintColor = tintColor
        UITableView.appearance().separatorColor = tintColor
    }
    
    
    // UINavigationBar
    internal static func customizeNavigationBar(
        barColor: UIColor,
        textColor: UIColor,
        buttonColor: UIColor) {
            UINavigationBar.appearance().barTintColor = barColor
            UINavigationBar.appearance().tintColor = buttonColor
            UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName: textColor]
    }
    
    internal static func customizeNavigationBar(
        barColor: UIColor,
        textColor: UIColor,
        fontName: String,
        fontSize: CGFloat,
        buttonColor: UIColor) {
            UINavigationBar.appearance().barTintColor = barColor
            UINavigationBar.appearance().tintColor = buttonColor
            UINavigationBar.appearance().backgroundColor = barColor
            var font = UIFont(name: fontName, size: fontSize)
            if ((font) != nil) {
                UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName: textColor,
                    NSFontAttributeName: font!
                ]
            }
    }
    
    
    // UITabBar
    internal static func customizeTabBar(
        barColor: UIColor,
        textColor: UIColor) {
            UITabBar.appearance().barTintColor = barColor
            UITabBar.appearance().tintColor = textColor
    }
    
    internal static func customizeTabBar(
        barColor: UIColor,
        textColor: UIColor,
        fontName: String,
        fontSize: CGFloat) {
            UITabBar.appearance().barTintColor = barColor
            UITabBar.appearance().tintColor = textColor
            
            var font = UIFont(name: fontName, size: fontSize)
            if ((font) != nil) {
                UITabBarItem.appearance().setTitleTextAttributes([NSFontAttributeName: font!], forState: .Normal)
            }
    }
    
    
    // UIButton
    internal static func customizeButton(
        buttonColor: UIColor) {
            UIButton.appearance().setTitleColor(buttonColor, forState: .Normal)
    }
    
    
    // UISwitch
    internal static func customizeSwitch(
        onColor: UIColor) {
            UISwitch.appearance().onTintColor = onColor
    }
    
    
    // UISearchBar
    internal static func customizeSearchBar(
        barColor: UIColor,
        tintColor: UIColor) {
            UISearchBar.appearance().barTintColor = barColor
            UISearchBar.appearance().tintColor = barColor
    }
    
    
    // UIActivityIndicator
    internal static func customizeActivityIndicator(
        color: UIColor) {
            UIActivityIndicatorView.appearance().color = color
    }
    
    
    // UISegmentedControl
    internal static func customizeSegmentedControl(
        mainColor: UIColor,
        secondaryColor: UIColor) {
            UISegmentedControl.appearance().tintColor = mainColor
    }
    
    internal static func customizeSegmentedControl(
        mainColor: UIColor,
        secondaryColor: UIColor,
        font: UIFont!) {
            UISegmentedControl.appearance().tintColor = mainColor
            if (font != nil) {
                UISegmentedControl.appearance().setTitleTextAttributes([NSFontAttributeName: font], forState: .Normal)
            }
    }
    
    
    // UIProgress
    internal static func customizeProgress(
        color: UIColor) {
        UIProgressView.appearance().tintColor = color
    }
    
    
    // UISlider
    internal static func customizeSlider(
        sliderColor: UIColor) {
            UISlider.appearance().minimumTrackTintColor = sliderColor
    }
    
    
    // UIToolbar
    internal static func customizeToolbar(
        tintColor: UIColor) {
            UIToolbar.appearance().tintColor = tintColor
    }
    
    
    // UIPageControl
    internal static func customizePageControl(
        currentPageColor: UIColor) {
            UIPageControl.appearance().pageIndicatorTintColor = UIColor.lightGrayColor()
            UIPageControl.appearance().currentPageIndicatorTintColor = currentPageColor
            UIPageControl.appearance().backgroundColor = UIColor.clearColor()
    }
    
    
    // Color utilities
    internal static func colorWithRGB(
        red: CGFloat,
        green: CGFloat,
        blue: CGFloat) -> UIColor {
            return UIColor(red: CGFloat(red/255.0), green: CGFloat(green/255.0), blue: CGFloat(blue/255.0), alpha: 1)
    }
    
}

