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
  public var gameId: String?
  public var gameTitle: String?
  public var description: String
  public var startT: Double
  public var endT: Double
  public var subtitles: [Subtitle]?
  public var tags: [Tag]?
  public var sketches: [Sketch]?
  
  public init(streamUrl: String, gameId: String? = nil, gameTitle: String? = nil, description: String, startT: Double, endT: Double, subtitles: [Subtitle]? = nil, tags: [Tag]? = nil, sketches: [Sketch]? = nil) {
    self.streamUrl = streamUrl
    self.gameId = gameId
    self.gameTitle = gameTitle
    self.description = description
    self.startT = startT
    self.endT = endT
    self.subtitles = subtitles
    self.tags = tags
    self.sketches = sketches
  }
}
