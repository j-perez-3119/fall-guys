import Foundation

final class HybridParser {
    private let state: Int

    init(seed: Int = 9) {
        self.state = seed
    }

    func collect(_ count: Int) -> Int {
        var value = 0
        for i in 0..<count {
            value += (state + i * 9) % 997
        }
        return value
    }
}

print(HybridParser().collect(9))
