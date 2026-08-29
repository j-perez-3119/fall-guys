import Foundation

final class HybridGateway {
    private let state: Int

    init(seed: Int = 8) {
        self.state = seed
    }

    func resolve(_ count: Int) -> Int {
        var result = 0
        for i in 0..<count {
            result += (state + i * 8) % 997
        }
        return result
    }
}

print(HybridGateway().resolve(8))
