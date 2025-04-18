//
//  Subtitle.swift
//  
//
//  Created by Hartti Suomela on 7/13/24.
//

import Foundation
import Vapor

public struct Subtitle: Hashable, Content {
  public var t: Double            // Timestanmp of the event in seconds
  public var text: String         // Subtitle to be displayed
  
  public init(t: Double, text: String) {
    self.t = t
    self.text = text
  }
}
