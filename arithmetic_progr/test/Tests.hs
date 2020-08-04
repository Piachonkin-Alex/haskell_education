import Test.Tasty (TestTree, defaultMain, testGroup)
import Test.Tasty.HUnit ((@?=), testCase)

import Arithmetic (ar)
main :: IO()

main = 
  defaultMain $
    testGroup "ar sum"
      [ testCase "a1 = 1, d = 1, n = 10 -> sum = 55" $ ar 1 1 10 @?= 55
      ,
        testCase "a1 = 5, d = 0, n = 100 -> sum = 500" $ ar 5 0 100 @?= 500
      ,
        testCase "a1 = 10, d = 2, n = 6 -> sum = 90" $ ar 10 2 6 @?= 90
      ]
