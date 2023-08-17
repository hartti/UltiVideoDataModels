//
//  Sketch.swift
//  
//
//  Created by Hartti Suomela on 8/11/23.
//

import Foundation
import Vapor

public struct Sketch: Identifiable, Hashable, Content {
  var _id: String
  public var timeStamp: Double
  public var strokes: [Stroke]

  public var id: String {
    _id
  }
  
  init(id: String = UUID().uuidString, timeStamp: Double) {
    self._id = id
    self.timeStamp = timeStamp
    strokes = []
  }
}

public struct Stroke: Identifiable, Hashable, Content {
  var _id: String = UUID().uuidString
  public var type: String      // StrokeType
  public var dashed: Bool
  public var color: String     // SketchColor
  public var points: [Coord]
  
  public var id: String {
    _id
  }
  
  init(id: String = UUID().uuidString, type: String, dashed: Bool, color: String, points: [Coord]) {
    self._id = id
    self.type = type
    self.dashed = dashed
    self.color = color
    self.points = points
  }
  
  init(type: String, dashed: Bool = false, color: String, points: [Coord]) {
    self._id = UUID().uuidString
    self.type = type
    self.dashed = dashed
    self.color = color
    self.points = points
  }
}

public struct Coord: Hashable, Content {
  public var x: Double
  public var y: Double
}

enum StrokeType: String, Hashable {
  case circle = "circle"
  case xmark = "xmark"
  case arrow = "arrow"
  case line = "line"
  case rectangle = "rectangle"
}


