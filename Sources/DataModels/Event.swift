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
  public var game: String     // UUID string of the game
  public var t: Double        // Timestanmp of the event in seconds
  public var certain: Bool    // Are details accurate
  public var starred: Bool    // Is this a highlight?
  public var type: String     // Type of the event, like pull, catch, throw, turnover, etc
  public var team: String     // UUID string of the team
  public var player: String?  // UUID string of the player (if knowns)
  public var subType: String?   // The sub type of the event, like what is the throw for throw event and what specific call for a call event
  public var breakmark: Bool?   // is the throw a break mark throw (only used for throw events
  public var passType: String?  // The type of the pass for catch, and turnover events (swing, dump, etc)
  public var passLength: String?  // the rough length of the pass for catch and turnover events
  public var goal: Bool?          // If the catch was also a score
  // Standardized field position, offense alsways moving up: Own endzone at the bottom, opponent's endzone at the top
  public var stdX: Double?     // coordinate widthwise
  public var stdY: Double?     // coordinate lengthwise
  // Field position from a fixed viewpoint for the video obeserver and the field diagram
  public var fixX: Double?     // coordinate according to the visual representation (usually length)
  public var fixY: Double?     // coordinate according to the visual representation (usually width)
//  public var gameFlowStatus: String?
  
  public var id: String {
    _id
  }
  
  public init(_id: String = UUID().uuidString, game: String, t: Double, certain: Bool, starred: Bool, type: String, team: String, player: String? = nil, breakmark: Bool? = nil, passType: String? = nil, passLength: String? = nil, goal: Bool? = nil, stdX: Double? = nil, stdY: Double? = nil, fixX: Double? = nil, fixY: Double? = nil) {
    self._id = _id
    self.game = game
    self.t = t
    self.certain = certain
    self.starred = starred
    self.type = type
    self.team = team
    self.player = player
    self.breakmark = breakmark
    self.passType = passType
    self.passLength = passLength
    self.goal = goal
    self.stdX = stdX
    self.stdY = stdY
    self.fixX = fixX
    self.fixY = fixY
  }
}
