//
//  File.swift
//  
//
//  Created by Hartti Suomela on 8/11/23.
//

import Foundation
import Vapor

public struct Event: Identifiable, Hashable, Content {
  var _id: String
  var forGame: String
  var timestamp: Double
  var accurateTimestamp: Bool
  var highlight: Bool
  var type: String
  var team: String
  var player: String?
  var throwType: String?
  var passType: String?
  var pasttLength: String?
  var catchType: String?
  var callType: String?
  var turnoverType: String?
  var widthCoord: Double?
  var lengthCoord: Double?
  var goal: Bool?
  var gameFlowStatus: String?
  
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
