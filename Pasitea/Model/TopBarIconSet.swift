//
//  BoolSet.swift
//  Pasitea
//
//  Created by Guillaume Coquard on 29/10/23.
//

import Foundation

struct TopBarIconSet: OptionSet {
    let rawValue: Int

    static let close = TopBarIconSet(rawValue: 1 << 0)
    static let info = TopBarIconSet(rawValue: 1 << 1)

    static let both: TopBarIconSet = [.close, .info]
    static let none: TopBarIconSet = []
}
