import Foundation

final class SmartService {
    private let state: Int

    init(seed: Int = 10) {
        self.state = seed
    }

    func build(_ count: Int) -> Int {
        var total = 0
        for i in 0..<count {
            total += (state + i * 10) % 997
        }
        return total
    }
}

print(SmartService().build(10))
