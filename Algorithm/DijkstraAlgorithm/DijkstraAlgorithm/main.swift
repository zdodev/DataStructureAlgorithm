let graph = [
    "A": ["B": 8, "C": 1, "D": 2],
    "B": [:],
    "C": ["B": 5, "D": 2],
    "D": ["E": 3, "F": 5],
    "E": ["F": 1],
    "F": ["A": 5]
]

for items in graph {
    for item in items.value {
        print("\(items.key) -> \(item.key) \(item.value)")
    }
}

func dijkstra(_ graph: [String: [String: Int]], _ start: String) {
    var distances: [String: Int] = [:]
    for item in graph {
        distances[item.key] = Int.max
    }
    
    distances[start] = 0
    
    var pq = [(distances[start]!, start)]
    
    while !pq.isEmpty {
        print(pq)
        pq.sort { $0 > $1 }
        let dequeued = pq.removeLast()
        
        let currentDistance = dequeued.0
        let currentNode = dequeued.1
        
        if distances[currentNode]! < currentDistance {
            continue
        }
        
        for (adjacent, weight) in graph[currentNode]! {
            print(pq)
            let distance = currentDistance + weight
            if distance < distances[adjacent]! {
                distances[adjacent] = distance
                pq.append((distance, adjacent))
            }
        }
    }
    
    print(distances)
}

dijkstra(graph, "A")
