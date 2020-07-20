import   Test.Tasty (TestTree, defaultMain, testGroup)
import Test.Tasty.HUnit(testCase, (@?=))

import Sqeq

main :: IO()

main = defaultMain $ 
  testGroup "Tests"
    [
    testCase "x^2 + 2x + 1 = 0 -> [-1,-1]" $ (sq 1 2 1 @?= [-1,-1])
    ,
    testCase "x^2 - 2x + 1 = 0 -> [1,1]" $ (sq 1 (-2) 1 @?= [1,1]) 
    ]
