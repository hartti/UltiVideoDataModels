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
  public var forGame: String
  public var timestamp: Double
  public var accurateTimestamp: Bool
  public var highlight: Bool
  public var type: String
  public var team: String
  public var player: String?
  public var throwType: String?
  public var breakmark: Bool?
  public var passType: String?
  public var passLength: String?
  public var catchType: String?
  public var callType: String?
  public var turnoverType: String?
  public var goal: Bool?
  // Standardized field position, offense alsways moving up: Own endzone at the bottom, opponent's endzone at the top
  public var stdX: Double?     // coordinate widthwise
  public var stdY: Double?     // coordinate lengthwise
  // Field position from a fixed viewpoint for the video obeserver and the field diagram
  public var fixX: Double?     // coordinate according to the visual representation (usually length)
  public var fixY: Double?     // coordinate according to the visual representation (usually width)
  public var gameFlowStatus: String?
  
  public var id: String {
    _id
  }
  
  public init(_id: String = UUID().uuidString, forGame: String, timestamp: Double, accurateTimestamp: Bool, highlight: Bool, type: String, team: String, player: String? = nil, throwType: String? = nil, breakmark: Bool? = nil, passType: String? = nil, passLength: String? = nil, catchType: String? = nil, callType: String? = nil, turnoverType: String? = nil, goal: Bool? = nil, stdX: Double? = nil, stdY: Double? = nil, fixX: Double? = nil, fixY: Double? = nil) {
    self._id = _id
    self.forGame = forGame
    self.timestamp = timestamp
    self.accurateTimestamp = accurateTimestamp
    self.highlight = highlight
    self.type = type
    self.team = team
    self.player = player
    self.throwType = throwType
    self.breakmark = breakmark
    self.passType = passType
    self.passLength = passLength
    self.catchType = catchType
    self.callType = callType
    self.turnoverType = turnoverType
    self.goal = goal
    self.stdX = stdX
    self.stdY = stdY
    self.fixX = fixX
    self.fixY = fixY
  }
}
