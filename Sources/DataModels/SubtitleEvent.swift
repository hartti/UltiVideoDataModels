//
//  SubtitleEvent.swift
//  
//
//  Created by Hartti Suomela on 7/13/24.
//

import Foundation
import Vapor

public struct SubtitleEvent: Hashable, Content {
  public var t: Double            // Timestanmp of the event in seconds
  public var text: String         // Subtitle to be displayed
}
