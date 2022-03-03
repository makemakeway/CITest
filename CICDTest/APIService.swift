//
//  APIService.swift
//  CICDTest
//
//  Created by 박연배 on 2022/03/03.
//

import Foundation

final class APIService {
    let urlString = "https://www.dhlottery.co.kr/common.do?method=getLottoNumber&drwNo=950"
    
    var number = 0
    
    func callRequest(completion: @escaping (Int) -> ()) {
        guard let url = URL(string: urlString) else { return }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let response = response as? HTTPURLResponse, (200...299).contains(response.statusCode) else { return }
            guard let data = data, error == nil else { return }
            
            do {
                let value = try JSONDecoder().decode(Lotto.self, from: data)
                
//                self.number = value.drwtNo1
                completion(self.number)
            } catch {
                return
            }
        }
        task.resume()
    }
    
    
}
