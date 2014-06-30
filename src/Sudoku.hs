module Sudoku where

cross xs ys = [[x,y] | x <- xs, y <- ys]

digits = "123456789"
rows = "ABCDEFGHI"

cols = digits

squares = cross rows cols

unitlist = [cross rows [c] | c <- cols] ++
           [cross [r] cols | r <- rows] ++
           [cross rs cs | rs <- ["ABC", "DEF", "GHI"]
                        , cs <- ["123", "456", "789"]]

unitsOf x = [u | u <- unitlist, x `elem` u]

peersOf s = foldl addNew [] $ concat $ unitsOf s
  where
    addNew xs x = if x == s || x `elem` xs then xs else x:xs

parseGrid = undefined
