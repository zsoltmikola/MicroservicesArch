//
//  EventBus.swift
//  MicroservicesArch
//
//  Created by Zsolt Mikola on 04/03/2017.
//  Copyright © 2017 Zsolt Mikola. All rights reserved.
//

import UIKit

class EventBus: NSObject {

    var events = [Event]()

    override init(){
        super.init()
        NotificationCenter.default.addObserver(forName: nil, object: nil, queue: nil, using:isNotified)
    }

    func isNotified(notification : Notification){
        events.append(Event(fromNotification: notification))
    }

    func listofevents() {
        for event in events {
            print(event.domain)
        }
    }
}
