//
//  File.swift
//  AdotaGato.com
//
//  Created by Nicole Taufenbach on 26/01/22.
//

import Foundation

struct RacaSummary: Codable {
  let results: [Raca]?
}

struct Raca: Codable {
  let name: String
  
  enum CodingKeys: String, CodingKey {
    case name
  }
  
  init(name: String) {
    self.name = name
  }
    
}
