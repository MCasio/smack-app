//
//  SocketService.swift
//  Smack
//
//  Created by Mahmoud Mohammed on 8/4/18.
//  Copyright © 2018 mahmoud. All rights reserved.
//

import UIKit
import SocketIO

class SocketService: NSObject {
    
    static let instance = SocketService()
    
    override init() {
        super.init()
    }
    
    var socket: SocketIOClient = SocketManager(socketURL: URL(string: BASE_URL)!).defaultSocket
    
    func establishConnection() {
        socket.connect()
    }
    
    func closeConnection() {
        socket.disconnect()
    }
    
    func addChannel(channelName: String, channelDescription: String, completion: @escaping CompletionHandler) {
        socket.emit("newChannel", channelName, channelDescription)
        completion(true)
    }
    
    func getChannel(completion: @escaping CompletionHandler) {
        socket.on("channelCreated") { (dataArray, ack) in
            guard let channelName = dataArray[0] as? String ,
                let channelDesc = dataArray[1] as? String ,
                let channelId = dataArray[2] as? String  else { return }
            
            let newChannel = Channel(channelTitle: channelName, channelDescription: channelDesc, id: channelId)
            MessageService.instance.channels.append(newChannel)
            completion(true)
        }
    }
    
}