//
//  MyGreeterClient.swift
//  MyGreeter.Client
//
//  Created by 王斌 on 2022/7/4.
//

import Foundation

class MyGreeterClient: NSObject {
    
    func greet() -> String {
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: Date())
        print(hour)
        
        switch hour {
        case 6..<12:
            return "Good morning"
        case 12..<18:
            return "Good afternoon"
        default:
            return "Good evening"
        }
    }
    
}
