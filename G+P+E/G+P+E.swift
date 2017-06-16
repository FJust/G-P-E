//
//  G+P+E.swift
//  G+P+E
//
//  Created by PF on 2017/5/9.
//  Copyright © 2017年 PF. All rights reserved.
//

import UIKit

protocol Reusable {
    /// 为cell准备的Identifier
    static var just_Idnentifier: String { get }
}

extension Reusable {
    /// 利用自己的扩展实现自己
    static var just_Idnentifier: String {
        return String(describing: self)
    }
}

// MARK: - 遵守这个协议，且什么都不用操作
extension UITableViewCell: Reusable { }

extension UITableView {
    func just_dequeueReusableCell<T: UITableViewCell>(_: T.Type) -> T where T: Reusable {
        guard let cell = self.dequeueReusableCell(withIdentifier: T.just_Idnentifier) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.just_Idnentifier)")
        }
        return cell
    }
    
    func just_registerNib<T: UITableViewCell>(_: T.Type) {
        register(UINib(nibName: T.just_Idnentifier, bundle: nil), forCellReuseIdentifier: T.just_Idnentifier)
    }
}
