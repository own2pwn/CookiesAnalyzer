//
//  StartValuesManager.swift
//  CookiesAnalyzer
//
//  Created by Bodo Schönfeld on 01/07/16.
//  Copyright © 2016 Bodo Schönfeld. All rights reserved.
//

import Foundation

class StartValuesManager {
    
    private struct Cookies {
        static let previousFirefoxCookiesKey = "previousFirefoxCookies"
        static let previousSafariCookiesKey = "previousSafariCookies"
    }
    
    var previousFirefoxCookies: Int {
        get {
            return (userDefaults.object(forKey: Cookies.previousFirefoxCookiesKey) as? Int)!
        }
        set (newPreviousCookies) {
            userDefaults.set(newPreviousCookies, forKey: Cookies.previousFirefoxCookiesKey)
        }
    }
    
    var previousSafariCookies: Int {
        get {
            return (userDefaults.object(forKey: Cookies.previousSafariCookiesKey) as? Int)!
        }
        set (newPreviousCookies) {
            userDefaults.set(newPreviousCookies, forKey: Cookies.previousSafariCookiesKey)
        }
    }
    
    private let userDefaults = UserDefaults.standard
    
    init() {
        registerDefaultValues()
    }
    
    func registerDefaultValues() {
        let defaults = [Cookies.previousFirefoxCookiesKey: 0, Cookies.previousSafariCookiesKey: 0]
        userDefaults.register(defaults: defaults)
    }
    
}

