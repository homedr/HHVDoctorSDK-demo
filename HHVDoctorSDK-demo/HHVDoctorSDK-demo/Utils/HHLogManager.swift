//
//  HHLogManager.swift
//  H301
//
//  Created by Shi Jian on 2018/8/17.
//  Copyright © 2018年 HHMedic. All rights reserved.
//

import UIKit
import CocoaLumberjack

class HHLogManager {
    
    static let `default` = HHLogManager()
    
    init() {
        let aManager = DDLogFileManagerDefault(logsDirectory: NSSearchPathForDirectoriesInDomains(.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)[0])
        let logger = DDFileLogger(logFileManager: aManager)
        logger.rollingFrequency = TimeInterval(60*60*24)
        logger.logFileManager.maximumNumberOfLogFiles = 14
        
        DDLog.add(logger)
    }
    
    func ddLog(_ info: String) {
        let aMsg = DDLogMessage(message: info, level: .info, flag: .info, context: 0, file: #file, function: "", line: #line, tag: nil, options: DDLogMessageOptions.dontCopyMessage, timestamp: Date())
        DDLog.sharedInstance.log(asynchronous: true, message: aMsg)
    }
    
}


