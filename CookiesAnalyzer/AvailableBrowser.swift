//
//  AvailableBrowser.swift
//  CookiesAnalyzer
//
//  Created by Bodo Schönfeld on 20/08/16.
//  Copyright © 2016 Bodo Schönfeld. All rights reserved.
//

import Foundation

class AvailableBrowser {
    
    private let firefoxCookiesPath = FirefoxCookiesPath()
    private let safariCookiesPath = SafariCookiesPath()
    
    /**
     Determine the available browser of the user's macOS.
     - version: 0.2
     - date: August 22nd, 2016
     - returns: The installed Browser (as Tuple).
     */
    func checkBrowser() -> (Int, Int, Int) {
        
        var firefox = 0
        var safari = 0
        var chrome = 0
        
        // Firefox Cookies Path
        let firefoxCookiesPath = FirefoxCookiesPath()
        
        do {
            _ = try firefoxCookiesPath.createFirefoxCookiesPath()
            firefox = 1
        } catch _ {
            firefox = 0
        }
        
        // Safari Cookies Path
        let safariCookiesPath = SafariCookiesPath()
        
        do {
            _ = try safariCookiesPath.createSafariCookiesPath()
            safari = 1
        } catch _ {
            safari = 0
        }
        
        // Chrome Cookies Path
        chrome = 0 // dummy value
        
        // Browser: (Firefox, Safari, Chrome)
        let browserAvailability = (firefox, safari, chrome)
        
        return browserAvailability
    }
    
}
