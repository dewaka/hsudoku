cross xs ys = [[x,y] | x <- xs, y <- ys]

digits = "123456789"
rows = "ABCDEFGHI"
cols = digits

squares = cross rows cols

unitlist = [cross rows [c] | c <- cols] ++
           [cross rows [c] | c <- rows] ++
           [cross rs cs | rs <- ["ABC", "DEF", "GHI"], cs <- ["123", "456", "789"]]

-- TODO: from units onwards

main = putStrLn "Simple Sudoku Solver"
