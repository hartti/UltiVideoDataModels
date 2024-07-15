//
//  VideoClip.swift
//  
//
//  Created by Hartti Suomela on 8/21/23.
//

import Foundation
import Vapor

public struct VideoClip: Hashable, Content {
  public var streamUrl: String
  public var gameTitle: String?
  public var description: String
  public var startT: Double
  public var endT: Double
  public var events: [SubtitleEvent]?
  public var tags: [Tag]?
  public var sketches: [Sketch]?
  
  public init(streamUrl: String, gameTitle: String? = nil, description: String, startT: Double, endT: Double, subtitleEvents: [SubtitleEvent]? = nil) {
    self.streamUrl = streamUrl
    self.gameTitle = gameTitle
    self.description = description
    self.startT = startT
    self.endT = endT
    self.events = subtitleEvents
  }
}
