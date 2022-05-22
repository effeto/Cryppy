//
//  Tokens.swift
//  Cryppy
//
//  Created by Демьян on 21.05.2022.
//

import Foundation
import UIKit

struct Tokens {
    let name: String
    let image: UIImage?
    let price: String?
    let percent: Double?
    let chart: UIImage?
    let isCryprto: Int
    let iconURL: URL?
}

struct Coins: Decodable {
    let asset_id: String
    let price_usd: Double?
    let type_is_crypto: Int
}

struct Icon: Decodable {
    let asset_id: String
    let url: String
}


