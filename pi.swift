func makePi(precision: Int) {
    var pointsInCircle: Float = 0
    var pointsInSquare: Float = 0
    for i in 1...precision {
        var x = Float.random(in: 0...1)
        var y = Float.random(in: 0...1)
        var distance: Float = x*x + y*y
        if distance < 1 {
            pointsInCircle += 1
            pointsInSquare += 1
        } else {
            pointsInSquare += 1
        }
    }
    var pi: Float = (4 * pointsInCircle) / pointsInSquare
    print(pi)
}

makePi(precision: 100000)
