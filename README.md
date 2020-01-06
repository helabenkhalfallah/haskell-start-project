# haskell-start-project
A start project to tast Haskell.

I will try to make an analogy with Javascript (ES6+)

## Launch project 
stack ghci main.hs

To reload :
:reload

## Haskell Basics

```haskell

Operators :

* equality :
(==) :: a -> a -> Bool -- equality
(/=) :: a -> a -> Bool -- Inequality

> False == False
True

> 'a' == 'b'
False

> "abc" == "abc"
True

> [1, 2] == [1, 2, 3]
False

> ('a', False) /= ('a', False) -- Tuple
False

Ordered :
>
<
<=
>= 
min
max

Conversion :

* From Types to String show : (toString)

> show False
"False"

> show 'a'
"'a'"

> show 123
"123"

> show [1, 2, 3]
"[1,2,3]"

* From String to a Type read :

> read "False" :: Bool -- we want to convert False string to Bool
False

> read "123" :: Int 
123

> read "abc" :: Int
*** Exception: Prelude.read: no parse

> read "a" :: Char
*** Exception: Prelude.read: no parse

> read "'a'" :: Char
'a'

> read "[1, 2, 3]" :: [Int]
[1,2,3]

> read "('a', False)" :: (Char, Bool)
('a',False)
```

Numeric :

```haskell
+
-
* 
negate
abs
signum

> 1 + 2
3

> 1.0 + 2.0
3.0

> negate 3.0
-3.0

> abs (-3)
3

> signum (-3)
-1 

Integral :
div
mod

> 7 `div` 2
3

> 7 `mod` 2
1

Fractional :
/
recip -- 1/x

> 7.0 / 2.0
3.5

> recip 2
0.5 -- 1/2

> recip 4
0.25 -- 1/4
```

Conditional IF/Else :
(todo)

Guard :
(todo)

## Haskell Types 

```haskell
Bool
Char
String
Int : fixed precision
Integer : arbitrary precision
Float : single precision floating-point number
Double : double precision floating-point number

* List types :
[False, True, False] :: [Bool]
['a', 'b', 'c'] :: [Char]
["One", "Two", "Three"] :: [String]

- length
- [] : empty list
- List of one element are called singleton list
- [[]] and [] are different list

```

## Haskell Functions

```haskell
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

```

## Haskell Array / List


## Haskell Object
