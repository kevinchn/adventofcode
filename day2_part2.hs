import Data.List.Split(splitOn)
import Data.List(tails)

divisor xs = head pairs
  where pairs = [ x1 `quot` x2 | x1 <- xs,
                                 x2 <- xs,
                                 x1 > x2,
                                 x1 `rem` x2 == 0]

main = do
  input <- readFile "day2_input"
  let inputLst = map (map (\x -> read x::Int)) (map (splitOn "\t") (splitOn "\n" input))
  print (sum (map divisor inputLst))
