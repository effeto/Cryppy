//
//  ApiCaller.swift
//  Cryppy
//
//  Created by Демьян on 21.05.2022.
//

import Foundation
import UIKit

final class ApiCaller {
    static let shared = ApiCaller()
    
    public var icons:[Icon] = []
    private var whenReadyBlock:((Result<[Coins], Error>) -> Void)?
    
    private struct Constants {
        static let apiKey = "A17F77DD-D133-4EF5-A10F-5AC7D35435A5"
        static let assetsEndpoint = "https://rest.coinapi.io/v1/assets/"
        static let iconsEndpoinr = "https://rest.coinapi.io/v1/assets/icons/24/"
    }
    
    private init() {
        
    }
    
    public func getCryptoData(completion: @escaping (Result<[Coins], Error>) -> Void) {
        guard !icons.isEmpty else {
            whenReadyBlock = completion
            return
        }
        
        guard let url = URL(string: Constants.assetsEndpoint + "?apikey=" + Constants.apiKey) else {return}
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else {return}
            do {
                let cryptos = try JSONDecoder().decode([Coins].self , from: data)
                completion(.success(cryptos.sorted(by: { first, second in
                    return first.price_usd ?? 0 > second.price_usd ?? 0
                })))
            }catch{
                completion(.failure(error))
            }
        }
        
        task.resume()
    }
    
    public func getAllIcons() {
        guard let url = URL(string: Constants.iconsEndpoinr + "?apikey=" + Constants.apiKey) else {return}
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {return}
            do {
                self?.icons  = try JSONDecoder().decode([Icon].self , from: data)
                if let completion = self?.whenReadyBlock {
                    self?.getCryptoData(completion: completion)
                }
                
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }
    
}
