module Problems110
( myLast,
  myLast',
  myButLast,
  myButLast'
)where

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