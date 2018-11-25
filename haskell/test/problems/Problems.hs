module Main where

import Test.Tasty
import Test.Tasty.HUnit

import Problems110

main :: IO ()
main = do
  defaultMain (testGroup "Our Library Tests"
    [lastTests, butLastTests, numberAt, numberAt', testLength])

lastTests :: TestTree
lastTests = testGroup "Last element tests"
   [ testCase "Testing last element" (assertEqual "Should get 4" 4 (myLast [1, 2, 3, 4]))
   , testCase "Testing last element (second function)" (assertEqual "Should get 4" 4 (myLast' [1, 2, 3, 4]))
   , testCase "Testing last character element" (assertEqual "Should get t" 't' (myLast "the last"))
   , testCase "Testing last character element (second function)" (assertEqual "Should get t" 't' (myLast' "the last"))
   ]

butLastTests :: TestTree
butLastTests = testGroup "Last element tests"
  [ testCase "Testing last but one number" (assertEqual "Should get 3" 3 (myButLast [1, 2, 3, 4]))
  , testCase "Testing last but one number (second function)" (assertEqual "Should get 3" 3 (myButLast' [1, 2, 3, 4]))
  , testCase "Testing last but one character element" (assertEqual "Should get s" 's' (myButLast "the last"))
  , testCase "Testing last but one character element (second function)"
    (assertEqual "Should get s" 's' (myButLast' "the last"))
  ]

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