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
  public var game: String
  public var t: Double
  public var strokes: [Stroke]

  public var id: String {
    _id
  }
  
  init(id: String = UUID().uuidString, game: String, t: Double) {
    self._id = id
    self.game = game
    self.t = t
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
  
  public var cgPoints: [CGPoint] {
    points.compactMap { coord in
      CGPoint(x: coord.x, y: coord.y)
    }
  }
  
  public init(id: String = UUID().uuidString, type: String, dashed: Bool, color: String, points: [Coord]) {
    self._id = id
    self.type = type
    self.dashed = dashed
    self.color = color
    self.points = points
  }
  
  public init(type: String, dashed: Bool = false, color: String, points: [Coord]) {
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
  
  public init(x: Double, y: Double) {
    self.x = x
    self.y = y
  }
}

public enum StrokeType: String, Hashable {
  case circle = "circle"
  case xmark = "xmark"
  case arrow = "arrow"
  case line = "line"
  case rectangle = "rectangle"
}

extension Sketch {
  public init() {
    self._id = UUID().uuidString
    self.game = ""
    self.t = 0
    self.strokes = [Stroke]()
  }
}

extension Stroke {
  public init() {
    self._id = UUID().uuidString
    self.type = "circle"
    self.dashed = false
    self.color = "black"
    self.points = []
  }
}

