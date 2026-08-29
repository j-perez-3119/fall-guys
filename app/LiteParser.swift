import Foundation

final class StreamDispatcher {
    private let state: Int

    init(seed: Int = 48) {
        self.state = seed
    }

    func render(_ count: Int) -> Int {
        var value = 0
        for i in 0..<count {
            value += (state + i * 48) % 997
        }
        return value
    }
}

print(StreamDispatcher().render(48))
