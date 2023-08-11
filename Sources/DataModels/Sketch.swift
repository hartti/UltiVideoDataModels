//
//  File.swift
//  
//
//  Created by Hartti Suomela on 8/11/23.
//

import Foundation
import Vapor

public struct Sketch: Identifiable, Hashable, Content {
  var _id: String
  
  public var id: String {
    _id
  }
  
  public init(_id: String = UUID().uuidString) {
    self._id = _id
  }
}
