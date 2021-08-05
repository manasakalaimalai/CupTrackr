//
//  TimerMode.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 20/07/21.
//

import Foundation

enum TimerMode {
    case running
    case paused
    case initial 
}

func secondstoHoursandMinsandSecs(seconds: Int) -> String {
    let hours = "\(seconds / 3600)"
    let minutes = "\((seconds % 3600) / 60)"
    let seconds = "\((seconds % 3600) % 60)"
    
    let hourStamp = hours.count > 1 ? hours : "0" + hours
    let minuteStamp = minutes.count > 1 ? minutes : "0" + minutes
    let secondStamp = seconds.count > 1 ? seconds : "0" + seconds

    return "\(hourStamp) : \(minuteStamp) : \(secondStamp)"
}
