package cangjie_demo

import std.unittest.*
import std.unittest.testmacro.*

@Test
class AddTest {
    @TestCase
    func testAddPositive() {
        @Expect(add(2, 3), 5)
        @Expect(add(10, 20), 30)
        @Expect(add(0, 0), 0)
    }
    @TestCase
    func testAddNegative() {
        @Expect(add(-1, -2), -3)
        @Expect(add(-10, 5), -5)
        @Expect(add(7, -3), 4)
    }
    @TestCase
    func testAddLarge() {
        @Expect(add(1000000, 2000000), 3000000)
        @Expect(add(999999, 1), 1000000)
    }
}

@Test
class MultiplyTest {
    @TestCase
    func testMultiplyPositive() {
        @Expect(multiply(4, 5), 20)
        @Expect(multiply(3, 7), 21)
        @Expect(multiply(1, 100), 100)
    }
    @TestCase
    func testMultiplyZero() {
        @Expect(multiply(0, 5), 0)
        @Expect(multiply(10, 0), 0)
        @Expect(multiply(0, 0), 0)
    }
    @TestCase
    func testMultiplyNegative() {
        @Expect(multiply(-3, 4), -12)
        @Expect(multiply(-2, -5), 10)
    }
}

@Test
class DivideTest {
    @TestCase
    func testDivideNormal() {
        @Expect(divide(10, 2), 5)
        @Expect(divide(100, 25), 4)
        @Expect(divide(7, 1), 7)
    }
    @TestCase
    func testDivideNegative() {
        @Expect(divide(-10, 2), -5)
        @Expect(divide(-20, -4), 5)
    }
    @TestCase
    func testDivideByZero() {
        @AssertThrows[Exception](divide(10, 0))
    }
}

@Test
class FactorialTest {
    @TestCase
    func testFactorialBase() {
        @Expect(factorial(0), 1)
        @Expect(factorial(1), 1)
    }
    @TestCase
    func testFactorialNormal() {
        @Expect(factorial(3), 6)
        @Expect(factorial(5), 120)
        @Expect(factorial(7), 5040)
    }
}

@Test
class PrimeTest {
    @TestCase
    func testNotPrime() {
        @Expect(isPrime(0), false)
        @Expect(isPrime(1), false)
        @Expect(isPrime(4), false)
        @Expect(isPrime(20), false)
        @Expect(isPrime(100), false)
    }
    @TestCase
    func testPrime() {
        @Expect(isPrime(2), true)
        @Expect(isPrime(3), true)
        @Expect(isPrime(5), true)
        @Expect(isPrime(7), true)
        @Expect(isPrime(17), true)
        @Expect(isPrime(97), true)
    }
    @TestCase
    func testLargePrime() {
        @Expect(isPrime(9973), true)
        @Expect(isPrime(10000), false)
    }
}

@Test
func simpleAddTest() {
    @Expect(add(1, 1), 2)
    @Expect(add(100, 200), 300)
}

@Test
func simpleFactorialTest() {
    @Expect(factorial(4), 24)
    @Expect(factorial(6), 720)
}