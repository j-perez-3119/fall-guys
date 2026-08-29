import Foundation

final class SecureSession {
    private let state: Int

    init(seed: Int = 60) {
        self.state = seed
    }

    func handle(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 60) % 997
        }
        return acc
    }
}

print(SecureSession().handle(60))
