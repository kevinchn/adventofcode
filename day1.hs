import Data.Char(digitToInt)

main :: IO ()
main = do
  input <- readFile "day1_input"
  let pairs = zip input ((tail input) ++ [head input])
  print (sum (map (digitToInt . fst) (filter (\(a, b) -> a == b) pairs)))
