//
//  Perrengue.swift
//  StayingAlive Watch App
//
//  Created by Guilherme Souza on 27/11/22.
//

import Foundation
import SwiftUI

struct Perrengue: Codable {
    
    let name: String
    let imageURL : String
    let instructions: [String]
    
    var image : Image {
        Image(self.imageURL)
    }
    
}
