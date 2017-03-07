//
//  EventBus.swift
//  MicroservicesArch
//
//  Created by Zsolt Mikola on 04/03/2017.
//  Copyright © 2017 Zsolt Mikola. All rights reserved.
//

import UIKit

class NotificationBus: NSObject {

    var notifications = [Notification]()

    override init(){
        super.init()
        NotificationCenter.default.addObserver(forName: nil, object: nil, queue: nil, using:isNotified)
    }

    func isNotified(notification : Notification){
        notifications.append(notification)
    }

    func listofNotifications() {
        for notification in notifications {
            print(notification.domain)
        }
    }
}
