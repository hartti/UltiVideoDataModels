//
//  VideoClip.swift
//  
//
//  Created by Hartti Suomela on 8/21/23.
//

import Foundation
import Vapor

public struct VideoClip: Hashable {
  public var gameId: String
  public var gameTitle: String?
  public var description: String
  public var startTime: Double
  public var endTime: Double
  public var events: [Event]?
  public var tags: [Tag]?
  public var sketches: [Sketch]?
  
  public init(gameId: String, gameTitle: String? = nil, description: String, startTime: Double, endTime: Double) {
    self.gameId = gameId
    self.gameTitle = gameTitle
    self.description = description
    self.startTime = startTime
    self.endTime = endTime
  }
}
