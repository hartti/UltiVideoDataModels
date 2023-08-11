//
//  Game.swift
//
//
//  Created by Hartti Suomela on 8/10/23.
//

import Foundation
import Vapor

public struct Game: Identifiable, Hashable, Content {
  var _id: String
  var streamUrl: String
  var description: String
  var channelId: String?
  var channelTitle: String?
  var canBeEmbedded: Bool
  
  var year: Int?
  var division: String?
  var ultimateType: String?
  var seriesType: String?
  
  var gameReporterUrl: String?
  var team1id: String?
  var team2id: String?
  
  var teamss: [Team]?
  
  public var id: String {
    _id
  }
    
  public init(id: String = UUID().uuidString, streamUrl: String, description: String, channelId: String? = nil, channelTitle: String? = nil, canBeEmbedded: Bool, year: Int? = nil, division: String? = nil, ultimateType: String? = nil, seriesType: String? = nil, gameReporterUrl: String? = nil, team1id: String? = nil, team2id: String? = nil) {
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
    self.team1id = team1id
    self.team2id = team2id
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

