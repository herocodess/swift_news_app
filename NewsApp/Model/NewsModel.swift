//
//  NewsModel.swift
//  NewsApp
//
//  Created by Hero Momoh on 20/06/2022.
//

import Foundation


// MARK: - NewsModel
struct NewsModel: Codable {
    let articles: [Article]
}

// MARK: - Article
struct Article: Codable, Identifiable, Equatable {
    let id = UUID()
    let author: String?
    let url: String?
    let source, title, articleDescription: String?
    let image: String?
    let date: Date?

    enum CodingKeys: String, CodingKey {
        case author, url, source, title
        case articleDescription = "description"
        case image, date
    }
}

extension Article {
    static var dummyData: [Article] {
        [
            .init(
                author: "Shira Rubin",
                url: "https://www.washingtonpost.com/world/2022/06/20/israel-knesset-coalition-dissolve-bennett/",
                source: "The Washington Post",
                title: "Naftali Bennett to dissolve Israel government hold new elections - The Washington Post",
                articleDescription: "The diverse coalition has crumbled, and the nation is headed to its fifth election in less than four years.",
                image: "https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/MYBKNBHGHUI6ZJBCCG53SHNTBM.jpg&w=1440",
                date: Date()
            ),
            .init(
                author: "Shira Rubin",
                url: "https://www.washingtonpost.com/world/2022/06/20/israel-knesset-coalition-dissolve-bennett/",
                source: "The Washington Post",
                title: "Naftali Bennett to dissolve Israel government hold new elections - The Washington Post",
                articleDescription: "The diverse coalition has crumbled, and the nation is headed to its fifth election in less than four years.",
                image: "https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/MYBKNBHGHUI6ZJBCCG53SHNTBM.jpg&w=1440",
                date: Date()
            ),
            .init(
                author: "Shira Rubin",
                url: "https://www.washingtonpost.com/world/2022/06/20/israel-knesset-coalition-dissolve-bennett/",
                source: "The Washington Post",
                title: "Naftali Bennett to dissolve Israel government hold new elections - The Washington Post",
                articleDescription: "The diverse coalition has crumbled, and the nation is headed to its fifth election in less than four years.",
                image: "https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/MYBKNBHGHUI6ZJBCCG53SHNTBM.jpg&w=1440",
                date: Date()
            ),
            .init(
                author: "Shira Rubin",
                url: "https://www.washingtonpost.com/world/2022/06/20/israel-knesset-coalition-dissolve-bennett/",
                source: "The Washington Post",
                title: "Naftali Bennett to dissolve Israel government hold new elections - The Washington Post",
                articleDescription: "The diverse coalition has crumbled, and the nation is headed to its fifth election in less than four years.",
                image: "https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/MYBKNBHGHUI6ZJBCCG53SHNTBM.jpg&w=1440",
                date: Date()
            ),
            .init(
                author: "Shira Rubin",
                url: "https://www.washingtonpost.com/world/2022/06/20/israel-knesset-coalition-dissolve-bennett/",
                source: "The Washington Post",
                title: "Naftali Bennett to dissolve Israel government hold new elections - The Washington Post",
                articleDescription: "The diverse coalition has crumbled, and the nation is headed to its fifth election in less than four years.",
                image: "https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/MYBKNBHGHUI6ZJBCCG53SHNTBM.jpg&w=1440",
                date: Date()
            ),
            .init(
                author: "Shira Rubin",
                url: "https://www.washingtonpost.com/world/2022/06/20/israel-knesset-coalition-dissolve-bennett/",
                source: "The Washington Post",
                title: "Naftali Bennett to dissolve Israel government hold new elections - The Washington Post",
                articleDescription: "The diverse coalition has crumbled, and the nation is headed to its fifth election in less than four years.",
                image: "https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/MYBKNBHGHUI6ZJBCCG53SHNTBM.jpg&w=1440",
                date: Date()
            ),
            .init(
                author: "Shira Rubin",
                url: "https://www.washingtonpost.com/world/2022/06/20/israel-knesset-coalition-dissolve-bennett/",
                source: "The Washington Post",
                title: "Naftali Bennett to dissolve Israel government hold new elections - The Washington Post",
                articleDescription: "The diverse coalition has crumbled, and the nation is headed to its fifth election in less than four years.",
                image: "https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/MYBKNBHGHUI6ZJBCCG53SHNTBM.jpg&w=1440",
                date: Date()
            )
        ]
    }
}
