import Foundation

final class SecureCollector {
    private let state: Int

    init(seed: Int = 41) {
        self.state = seed
    }

    func handle(_ count: Int) -> Int {
        var total = 0
        for i in 0..<count {
            total += (state + i * 41) % 997
        }
        return total
    }
}

print(SecureCollector().handle(41))
