//
//  News.swift
//  Bodima
//
//  Created by udara prabath on 2025-07-03.
//

import Foundation

struct News: Identifiable {
    let id = UUID()
    let name: String
}

let items = [
    News(name: "Apple"),
    News(name: "Banana"),
    News(name: "Cherry"),
    // Add more
]
