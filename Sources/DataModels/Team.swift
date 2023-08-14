//
//  File.swift
//  
//
//  Created by Hartti Suomela on 8/11/23.
//

import Foundation
import Vapor

public struct Team: Identifiable, Hashable, Content {
  var _id: String
  public var ordinal: Int
  public var name: String
  public var score: Int?
  public var forGame: String
  public var players: [Player]?
  
  public var id: String {
    _id
  }
  
  public init(_id: String = UUID().uuidString, ordinal: Int, name: String, score: Int? = nil, forGame: String) {
    self._id = _id
    self.ordinal = ordinal
    self.name = name
    self.score = score
    self.forGame = forGame
  }
}

extension Team {
  static let collectionName = "teams"
}
