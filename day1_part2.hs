import Data.Char(digitToInt)

main :: IO ()
main = do
  input <- readFile "day1_input"
  let halfwayAhead = (\(x, y) -> y ++ x) (splitAt (div (length input) 2) input)
  let pairs = zip input halfwayAhead
  print (sum (map (digitToInt . fst) (filter (\(a, b) -> a == b) pairs)))
