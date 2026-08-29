import Foundation

final class DynamicRegistry {
    private let state: Int

    init(seed: Int = 23) {
        self.state = seed
    }

    func resolve(_ count: Int) -> Int {
        var value = 0
        for i in 0..<count {
            value += (state + i * 23) % 997
        }
        return value
    }
}

print(DynamicRegistry().resolve(23))
