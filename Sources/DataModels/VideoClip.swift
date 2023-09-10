//
//  VideoClip.swift
//  
//
//  Created by Hartti Suomela on 8/21/23.
//

import Foundation
import Vapor

public struct VideoClip: Hashable, Content {
  public var game: String
  public var gameTitle: String?
  public var description: String
  public var startT: Double
  public var endT: Double
  public var events: [Event]?
  public var tags: [Tag]?
  public var sketches: [Sketch]?
  
  public init(game: String, gameTitle: String? = nil, description: String, startT: Double, endT: Double) {
    self.game = game
    self.gameTitle = gameTitle
    self.description = description
    self.startT = startT
    self.endT = endT
  }
}
