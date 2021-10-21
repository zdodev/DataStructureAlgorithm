/*
   1
  ↙↓↘
 2 3 4
 ↓↙
 5 ↑
 ↓↘
 6 7
 */

// 그래프
let graph = [
    [],
    [2, 3, 4],
    [5],
    [5],
    [],
    [6, 7],
    [],
    [3],
]

// 순환함수을 이용한 DFS 구현
func recursiveDFS(vertex: Int, discovered: [Int] = [Int]()) -> [Int] {
    var discovered = discovered
    // 방문 처리
    discovered.append(vertex)
    print("\(vertex) ", terminator: "")
    
    // 현재 노드와 연결된 노드 탐색
    for v in graph[vertex] {
        if !discovered.contains(v) {
            // 깊이 우선 순환 탐색
            discovered = recursiveDFS(vertex: v, discovered: discovered)
        }
    }
    
    return discovered
}

print(recursiveDFS(vertex: 1))

// 스택을 이용한 DFS 구현
func iterativeDFS(vertex: Int) -> [Int] {
    var discovered = [Int]()
    // 첫 번째 노드를 스택에 삽입
    var stack = [vertex]
    
    // 스택이 비어있을 때까지
    while !stack.isEmpty {
        // 스택의 값 하나를 꺼내고
        let v = stack.popLast()!
        if !discovered.contains(v) {
            // 방문 처리
            discovered.append(v)
            print("\(v) ", terminator: "")
            // 방문 처리한 노드와 연결된 모든 노드를 스택에 삽입
            for vv in graph[v] {
                stack.append(vv)
            }
        }
    }
    
    return discovered
}

print(iterativeDFS(vertex: 1))

// 큐를 이용한 BFS 구현
func iterativeBFS(vertex: Int) -> [Int] {
    var discovered = [vertex]
    var queue = [vertex]
    print("\(vertex) ", terminator: "")
    
    while !queue.isEmpty {
        let v = queue.removeFirst()
        for vv in graph[v] {
            if !discovered.contains(vv) {
                discovered.append(vv)
                print("\(vv) ", terminator: "")
                queue.append(vv)
            }
        }
    }
    
    return discovered
}

print(iterativeBFS(vertex: 1))
