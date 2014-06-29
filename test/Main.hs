import Test.HUnit

test1 = TestCase (assertEqual "3 is equal to 3" 3 3)

tests = TestList [TestLabel "test1" test1]

main = do
  runTestTT tests
