package cangjie_demo

main(): Int64 {
    println("=== 仓颉单元测试演示程序 ===")
    println("加法测试: 2 + 3 = ${add(2, 3)}")
    println("乘法测试: 4 * 5 = ${multiply(4, 5)}")
    println("除法测试: 10 / 2 = ${divide(10, 2)}")
    println("阶乘测试: 5! = ${factorial(5)}")
    println("判断素数: 17 is prime? ${isPrime(17)}")
    println("判断素数: 20 is prime? ${isPrime(20)}")
    return 0
}

func add(a: Int64, b: Int64): Int64 {
    return a + b
}

func multiply(a: Int64, b: Int64): Int64 {
    return a * b
}

func divide(a: Int64, b: Int64): Int64 {
    if (b == 0) {
        throw Exception("除数不能为零!")
    }
    return a / b
}

func factorial(n: Int64): Int64 {
    if (n <= 1) {
        return 1
    }
    var result = 1
    for (i in 2..=n) {
        result = result * i
    }
    return result
}

func isPrime(n: Int64): Bool {
    if (n <= 1) {
        return false
    }
    if (n <= 3) {
        return true
    }
    if (n % 2 == 0 || n % 3 == 0) {
        return false
    }
    var i: Int64 = 5
    while (i * i <= n) {
        if (n % i == 0 || n % (i + 2) == 0) {
            return false
        }
        i += 6
    }
    return true
}