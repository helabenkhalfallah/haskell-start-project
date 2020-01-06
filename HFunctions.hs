-- Haskell Functions
{-

isEven :: Int -> Bool

add :: (Int, Int) -> Int
add (x, y) = x + y
add (5, 2)

JS analogy :
const add = (x,y) => x + Y

zeroto :: Int -> [Int]
zeroto n = [0..n]

Carried function :

Carried function in JS :
const add = x => y => x + y

This is equivalent to write :
function add(x) {
  return function (y) {
    return x + y;
  }
}

add(x) => function (y) {
    return x + y;
}

Carried function in Haskell :

addCarried :: Int -> (Int -> Int)
addCarried x y = x + y
add 5 2

The same thing like JS :
Int -> (Int -> Int) => for a given x we return a function f(y)


Carried multiplication in JS
const multi = (x, y, z) => x * y * z

const multiCarried = x => y => z => x * y * z

Carried multiplication in Haskell :
multiCarried :: Int -> (Int -> (Int -> Int))
multiCarried x y z = x * y * z

Difference between simple and carried is on declaration :
multiCarried :: Int -> (Int -> (Int -> Int))

multiCarried :: Int -> (Int -> (Int -> Int)) ===> multiCarried :: Int -> Int -> Int -> Int

-}