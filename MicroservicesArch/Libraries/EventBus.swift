//
//  EventBus.swift
//  MicroservicesArch
//
//  Created by Zsolt Mikola on 04/03/2017.
//  Copyright © 2017 Zsolt Mikola. All rights reserved.
//

import UIKit

class EventBus: NSObject {

    var events = [Notification]()

    override init(){
        super.init()
        NotificationCenter.default.addObserver(forName: nil, object: nil, queue: nil, using:isNotified)
    }

    func isNotified(notification : Notification){
        events.append(notification)
    }

    func notifications() {
        for notification in events {
            print(notification.name)
        }
    }
}
