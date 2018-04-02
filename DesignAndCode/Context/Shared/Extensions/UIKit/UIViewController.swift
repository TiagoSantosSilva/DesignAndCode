//
//  UIViewController.swift
//  DesignAndCode
//
//  Created by Tiago Santos on 02/04/18.
//  Copyright © 2018 Tiago Santos. All rights reserved.
//

import UIKit

extension UIViewController {
    func UIImageWithOriginalRendering(name: String) -> UIImage? {
        guard let image = UIImage(named: name) else { return nil }
        return image.withRenderingMode(.alwaysOriginal)
    }
}
