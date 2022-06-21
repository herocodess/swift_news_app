//
//  NewsViewModel.swift
//  NewsApp
//
//  Created by Hero Momoh on 20/06/2022.
//

import Foundation
import Combine

protocol NewsViewModel {
    func getArticles()
    var isLoading: Bool { get }
}

// Using Class not Struct cause i want to use ObservableObject to Observe changes
class NewsViewModelImpl: ObservableObject, NewsViewModel  {
    var isLoading: Bool {
        state == .loading
    }
    
    
    // Using DependencyInjection to Inject our service into this Class
    private let service: NewsService
    private(set) var article = [Article]() // Protect this var within the class but access it outside the class
    private var cancellables = Set<AnyCancellable>() // Used to hold request in memory
    @Published private(set) var state: ResultState = .loading // Listen to whenever state changes
    
    init(service: NewsService) {
        self.service = service
    }
    
    func getArticles() {
        self.state = .loading
        let cancellable = service
            .request(from: .getNews)
            .sink{
                res in
                switch res {
                    
                case .finished:
                    self.state = .success(content: self.article)
                
                case .failure(let error):
                    self.state = .failed(error: error)
                
                }
            } receiveValue: { response in
                self.article = response.articles
            }
        
        self.cancellables.insert(cancellable)
        }
    }

