//
//  Event.swift
//  MicroservicesArch
//
//  Created by Zsolt Mikola on 05/03/17.
//  Copyright © 2017 Zsolt Mikola. All rights reserved.
//

import UIKit

struct Event{

    let time = Date()
    let domain : String
    let object : [AnyHashable : Any]?

    init(fromNotification notification:Notification) {
        object = notification.userInfo
        domain = Event.camelCaseToDomain(camelcaseText: notification.name.rawValue)
    }

    fileprivate static func camelCaseToDomain(camelcaseText:String) -> String{

        return camelcaseText.replacingOccurrences(of: "Notification", with: "")

        //return unimplemented()
    }
}
