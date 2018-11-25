module Problems110
( myLast,
  myLast',
  myButLast,
  myButLast',
  elementAt,
  elementAt'
) where

myLast :: [a] -> a
myLast [] = error "Last element of empty list"
myLast [x] = x
myLast (_:xs) = myLast xs

myLast' = head . reverse

myButLast :: [a] -> a
myButLast [] = error "Not enough elements"
myButLast [x] = error "Not enough elements"
myButLast [x,_] = x
myButLast (x:xs) = myButLast xs

myButLast' = head . tail . reverse

elementAt :: (Num b, Eq b) => [a] -> b -> a
elementAt [] _ = error "Not enough elements"
elementAt (x:xs) 0 = x
elementAt (x:xs) y = elementAt xs (y - 1)

elementAt' xs n = head $ drop n xs