module Main where

import Test.HUnit
import Sudoku

test1 = TestCase (assertEqual "81 squares in a Sudoku board" 81 (length squares))

test2 = TestCase (assertEqual "27 units in a Sudoku board" 27 (length unitlist))

test3 = TestList [TestCase
                  (assertEqual ("units list should be 3 for units of " ++ s)
                   3 (length $ unitsOf s)) | s <- squares]

test4 = TestList [TestCase
                  (assertEqual ("peers count should be 20 for " ++ s)
                   20 (length $ peersOf s)) | s <- squares]

tests = TestList [ TestLabel "squares count" test1
                 , TestLabel "unitlist count" test2
                 , TestLabel "units count" test3
                 , TestLabel "peers count test" test4 ]

main = do
  runTestTT tests
