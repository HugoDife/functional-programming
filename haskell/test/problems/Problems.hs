module Main where

import Test.Tasty
import Test.Tasty.HUnit

import Problems110

main :: IO ()
main = do
  defaultMain (testGroup "Our Library Tests"
    [numberLast, numberLast', stringLast, stringLast', numberButLast', numberButLast', stringButLast, stringButLast',
    numberAt, numberAt', testLength])

numberLast :: TestTree
numberLast = testCase "Testing last element"
  (assertEqual "Should get 4" 4 (myLast [1, 2, 3, 4]))

numberLast' :: TestTree
numberLast' = testCase "Testing last element"
  (assertEqual "Should get 4" 4 (myLast' [1, 2, 3, 4]))

stringLast :: TestTree
stringLast = testCase "Testing last character element"
  (assertEqual "Should get t" 't' (myLast "the last"))

stringLast' :: TestTree
stringLast' = testCase "Testing last character element"
  (assertEqual "Should get t" 't' (myLast' "the last"))

numberButLast :: TestTree
numberButLast = testCase "Testing last but one number"
  (assertEqual "Should get 3" 3 (myButLast [1, 2, 3, 4]))

numberButLast' :: TestTree
numberButLast' = testCase "Testing last but one number"
  (assertEqual "Should get 3" 3 (myButLast' [1, 2, 3, 4]))

stringButLast :: TestTree
stringButLast = testCase "Testing last but one character element"
  (assertEqual "Should get s" 's' (myButLast "the last"))

stringButLast' :: TestTree
stringButLast' = testCase "Testing last but one character element"
  (assertEqual "Should get s" 's' (myButLast' "the last"))

numberAt :: TestTree
numberAt = testCase "Testing element at position 2"
  (assertEqual "Should get 2" 2 (elementAt [1, 2, 3, 4] 2))

numberAt' :: TestTree
numberAt' = testCase "Testing element at position 2"
  (assertEqual "Should get 1" 1 (elementAt' [1, 2, 3, 4] 1))

testLength :: TestTree
testLength = testGroup "Length tests"
  [ testCase "Length of list" $ assertEqual "Should get 2" 2 (myLength [1, 2])
  , testCase "Length of empty list" $ assertEqual "Should be 0" 0 (myLength [])
  ]