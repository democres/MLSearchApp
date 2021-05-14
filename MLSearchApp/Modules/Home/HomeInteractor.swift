//
//  HomeInteractor.swift
//  MLSearchApp
//
//  Created by David Figueroa on 11/04/21.
//

import Combine

struct HomeInteractor {
    
    func performSearch(searchQuery: String) -> AnyPublisher<ArticleResponse, ErrorResponse> {
        
        let subject = PassthroughSubject<ArticleResponse, ErrorResponse>()
        
        HomeAPI.searchArticles(searchQuery: searchQuery) { (articleResponse, error) in
            if let errorResponse = error {
                subject.send(completion: .failure(errorResponse))
            } else {
                if let autofundingResponse = articleResponse {
                    subject.send(autofundingResponse)
                    subject.send(completion: .finished)
                }
            }
        }

        return subject.eraseToAnyPublisher()
    }
}
