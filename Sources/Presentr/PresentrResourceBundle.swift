//
//  PresentrResourceBundle.swift
//  Presentr
//
//  Created by Presentr contributors.
//

import Foundation

enum PresentrResourceBundle {

    static var bundle: Bundle {
        #if SWIFT_PACKAGE
        return Bundle.module
        #else
        return Bundle(for: AlertViewController.self)
        #endif
    }

}
