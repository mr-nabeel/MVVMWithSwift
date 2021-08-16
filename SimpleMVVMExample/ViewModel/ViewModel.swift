//
//  DisplayViewModel.swift
//  SimpleMVVMExample
//
//  Created by Nabeel Khan on 03/08/2021.


import Foundation

class ViewModel {
    // MARK: - Initialization
    init(model: [Model]? = nil) {
        if let inputModel = model {
            items = inputModel
        }
    }
    
    var items: [Model] = [Model(title: "First row"),Model(title: "Second row")]
    
}

extension ViewModel {
    func fetchBreaches(completion: @escaping (Result<[Model], Error>) -> Void) {
        completion(.success(items))
    }
}
