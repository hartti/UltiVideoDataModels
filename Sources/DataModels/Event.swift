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
  public var widthCoord: Double?
  public var lengthCoord: Double?
  public var goal: Bool?
  public var gameFlowStatus: String?
  
  public var id: String {
    _id
  }
  
  public init(_id: String = UUID().uuidString, forGame: String, timestamp: Double, accurateTimestamp: Bool, highlight: Bool, type: String, team: String) {
    self._id = _id
    self.forGame = forGame
    self.timestamp = timestamp
    self.accurateTimestamp = accurateTimestamp
    self.highlight = highlight
    self.type = type
    self.team = team
  }
}
