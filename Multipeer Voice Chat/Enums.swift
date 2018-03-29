//
//  ControlStatus.swift
//  UI Demo
//
//  Created by Benjamin Troller on 3/22/18.
//  Copyright © 2018 Benjamin Troller. All rights reserved.
//

import Foundation
import CoreGraphics

enum ControlStatus {
    case on
    case off
}

enum ButtonAlpha: RawRepresentable {
    typealias RawValue = CGFloat
    
    case on
    case off
    
    init?(rawValue: RawValue) {
        switch rawValue {
        case 0.4:
            self = .on
        case 1.0:
            self = .off
        default:
            return nil
        }
    }
    
    var rawValue: CGFloat {
        switch self {
        case .on:
            return 0.4
        case .off:
            return 1
        }
    }

}
