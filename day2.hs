import Data.List.Split(splitOn)

main = do
  input <- readFile "day2_input"
  let inputLst = map (map (\x -> read x::Int)) (map (splitOn "\t") (splitOn "\n" input))
  print (sum (map (\lst -> (maximum lst) - (minimum lst)) inputLst))
