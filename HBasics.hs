{-
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


Numeric :

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


Conditional IF/Else :
(todo)

Guard :
(todo)

-}

module HBasics where

add :: Int -> Int -> Int
add x y = x + y