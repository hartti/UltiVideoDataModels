//
//  GamePLayDetails.swift
//  
//
//  Created by Hartti Suomela on 8/17/23.
//

import Foundation
import Vapor

public struct GamePlayDetails: Content {
  public var events: [Event]
  public var tags: [Tag]
  public var sketches: [Sketch]
  
  public init(events: [Event], tags: [Tag], sketches: [Sketch]) {
    self.events = events
    self.tags = tags
    self.sketches = sketches
  }
}
