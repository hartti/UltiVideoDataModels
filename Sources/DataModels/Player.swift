//
//  File.swift
//  
//
//  Created by Hartti Suomela on 8/11/23.
//

import Foundation
import Vapor

public struct Player: Identifiable, Hashable, Content {
  var _id: String
  var name: String
  var number: String?
  var forTeam: String
  
  public var id: String {
    _id
  }
  
  public init(_id: String = UUID().uuidString, name: String, number: String? = nil, forTeam: String) {
    self._id = _id
    self.name = name
    self.number = number
    self.forTeam = forTeam
  }
}

extension Player {
  static let collectionName = "players"
}
