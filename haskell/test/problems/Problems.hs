module Main where

import Test.Tasty
import Test.Tasty.HUnit

import Problems110

main :: IO ()
main = do
  defaultMain (testGroup "Our Library Tests" [numberLast, numberLast', stringLast, stringLast'])

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