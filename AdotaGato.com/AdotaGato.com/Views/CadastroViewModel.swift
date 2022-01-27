//
//  CadastroViewModel.swift
//  AdotaGato.com
//
//  Created by Nicole Taufenbach on 26/01/22.
//

import UIKit

class CadastroViewModel {

    internal func requestGatos(completionHandler: @escaping ([Raca]) -> Void) {
        guard let url = URL(string: "https://api.thecatapi.com/v1/breeds?api_key=a4805065-a45d-4b2f-94cb-24168e4d7ee3") else {
            return
        }
        let task = URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
            if let error = error {
                print("Não foi possível carregar raças por: \(error)")
            }
            
            guard let httpResponse = response as? HTTPURLResponse,
                       (200...299).contains(httpResponse.statusCode) else {
                           print("Error with the response, unexpected status code: \(response)")
                   return
                 }
            
            if let data = data,
                   let racaSummary = try? JSONDecoder().decode(RacaSummary.self, from: data) {
                completionHandler(racaSummary.results ?? [])
                 }
        })
        task.resume()
    }

}
