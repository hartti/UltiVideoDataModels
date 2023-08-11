//
//  Game.swift
//
//
//  Created by Hartti Suomela on 8/10/23.
//

import Foundation
import Vapor

public struct Game: Identifiable, Hashable, Content {
  public var _id: String
  public var streamUrl: String
  public var description: String
  public var channelId: String?
  public var channelTitle: String?
  public var canBeEmbedded: Bool
  
  public var year: Int?
  public var division: String?
  public var ultimateType: String?
  public var seriesType: String?
  
  public var gameReporterUrl: String?
  public var team1name: String?
  public var team2name: String?
  
  public var id: String {
    _id
  }
    
  public init(id: String = UUID().uuidString, streamUrl: String, description: String, channelId: String? = nil, channelTitle: String? = nil, canBeEmbedded: Bool, year: Int? = nil, division: String? = nil, ultimateType: String? = nil, seriesType: String? = nil, gameReporterUrl: String? = nil, team1name: String? = nil, team2name: String? = nil) {
    self._id = id
    self.streamUrl = streamUrl
    self.description = description
    self.channelId = channelId
    self.channelTitle = channelTitle
    self.canBeEmbedded = canBeEmbedded
    self.year = year
    self.division = division
    self.ultimateType = ultimateType
    self.seriesType = seriesType
    self.gameReporterUrl = gameReporterUrl
    self.team1name = team1name
    self.team2name = team2name
  }
}

public extension Game {
  static let collectionName = "games"
}

public extension Game {
  static let samples: [Game] = [
    Game(id: UUID().uuidString, streamUrl: "https://www.youtube.com/watch?v=rXvQN5Gd724", description: "United States vs. Japan | Mixed Semifinal | 2023 World Under-24 Ultimate Championships", canBeEmbedded: true),
    Game(id: UUID().uuidString, streamUrl: "https://www.youtube.com/watch?v=U5w887q0GxE", description: "Australia vs. United States | Open Quarterfinal | 2023 World Under-24 Ultimate Championships", canBeEmbedded: true),
    Game(id: UUID().uuidString, streamUrl: "https://www.youtube.com/watch?v=NStMNulhLxE", description: "Australia vs. Japan | Women's Quarterfinal | 2023 World Under-24 Ultimate Championships", canBeEmbedded: false)
  ]
}

