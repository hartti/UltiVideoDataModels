//
//  Event.swift
//  
//
//  Created by Hartti Suomela on 8/11/23.
//

import Foundation
import Vapor

public struct Event: Identifiable, Hashable, Content {
  var _id: String
  public var game: String         // UUID string of the game
  public var t: Double            // Timestanmp of the event in seconds
  public var type: String         // Type of the event, like pull, catch, throw, turnover, etc
  public var team: String         // UUID string of the team
  public var offDirection: String?  // Direction of the offense on the video
  public var goal: Bool?          // If the catch was also a score
  public var uncertain: Bool?     // True if some of the event details (like time stamp, or throwtype) are uncertain, false or nil othwerwise
  public var starred: Bool?       // True if highlight, false of nil otherwise
  public var calledBack: Bool?    // True if event is called back or replayed, false or nil otherwise
  public var player: String?      // UUID string of the player (if knowns)
  public var subType: String?     // The sub type of the event, like what is the throw for throw event and what specific call for a call event
  public var breakmark: Bool?     // is the throw a break mark throw (only used for throw events)
  public var passType: String?    // The type of the pass for catch, and turnover events (swing, dump, etc)
  public var passLength: String?  // the rough length of the pass for catch and turnover events
  public var gameEvent: String?   // start, end, halftime, etc..
  
  // Standardized field position, offense alsways moving up: Own endzone at the bottom, opponent's endzone at the top
  public var stdPos: Coord?
  // Field position from a fixed viewpoint for the video obeserver and the field diagram
  public var tappedXY: Coord?
  
  // Lineups, only used in Pull events
  public var lineups: [Lineup]?
  
  public var id: String {
    _id
  }
  
  public init(_id: String = UUID().uuidString, game: String, t: Double, type: String, team: String, offDirection: String? = nil, goal: Bool? = nil, uncertain: Bool? = nil, starred: Bool? = nil, calledBack: Bool? = nil, player: String? = nil, subType: String? = nil, breakmark: Bool? = nil, passType: String? = nil, passLength: String? = nil, stdPos: Coord? = nil, tappedXY: Coord? = nil) {
    self._id = _id
    self.game = game
    self.t = t
    self.type = type
    self.team = team
    self.offDirection = offDirection
    self.goal = goal
    self.uncertain = uncertain
    self.starred = starred
    self.calledBack = calledBack
    self.player = player
    self.subType = subType
    self.breakmark = breakmark
    self.passType = passType
    self.passLength = passLength
    self.stdPos = stdPos
    self.tappedXY = tappedXY
  }
}

public struct Lineup: Hashable, Content {
  public var team: String
  public var players: [String]
  
  public init(team: String, players: [String]) {
    self.team = team
    self.players = players
  }
}
