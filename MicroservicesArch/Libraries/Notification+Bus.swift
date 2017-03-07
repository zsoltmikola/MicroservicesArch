//
//  Notification+EventBus.swift
//  MicroservicesArch
//
//  Created by Zsolt Mikola on 07/03/17.
//  Copyright © 2017 Zsolt Mikola. All rights reserved.
//

import UIKit

extension Notification {

    var domain : String {
        var name = self.name.rawValue
        let pattern = 	"([a-z]+)"
        let regex = try! NSRegularExpression(pattern: pattern, options: .allowCommentsAndWhitespace)
        name = name.replacingOccurrences(of: "_", with: "")

        name = regex.stringByReplacingMatches(in: name, options: .reportProgress, range: NSMakeRange(0, name.characters.count), withTemplate: "$1.")
        
        return name.replacingOccurrences(of: ".Notification.", with: "").lowercased()
    }
    
    var object : [AnyHashable : Any]? {
        return self.userInfo
    }
}
