//
//  Countries.swift
//  spspeak
//
//  Created by Barsoum on 12/26/21.
//

import Foundation
import SwiftUI

struct Countries: Hashable, Codable, Identifiable {
    var name: String
    var independence: String
    var id: Int
    var headofgovernment: String
    var headofstate: String
    var population: String
    var capital: String
    var language: String
    var desc: String
    //var placesOfInterest: [String]
}
