//
//  Tag.swift
//  
//
//  Created by Hartti Suomela on 8/16/23.
//

import Foundation
import Vapor

public struct Tag: Identifiable, Hashable, Content {
  var _id: String
  public var timeStamp: Double
  public var tag: String
  
  public var id: String {
    _id
  }
  
  public init(id: String = UUID().uuidString, timeStamp: Double, tag: String) {
    self._id = id
    self.timeStamp = timeStamp
    self.tag = tag
  }
}
