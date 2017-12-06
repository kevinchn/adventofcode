import System.Environment(getArgs)

cartesian :: Int -> (Int, Int)
cartesian n = do
    let level = ceiling (((sqrt (fromIntegral n)) - 1) / 2) :: Int
    let backwardSteps = (level * 2 + 1) ^ 2 - n
    stepBack level backwardSteps

stepBack :: Int -> Int -> (Int, Int)
stepBack level steps
    | steps <= len = (x-steps, y)
    | steps <= len * 2 = (-x, y + (steps - len))
    | steps <= len * 3 = (-x + (steps - len * 2), -y)
    | otherwise = (x, -y + (steps - len * 3))
    where len = level * 2
          (x, y) = (level, -level)

norm1 :: (Int, Int) -> Int
norm1 (x, y) = abs x + abs y

steps :: Int -> Int
steps n = norm1 (cartesian n)

main = do
    [n] <- getArgs
    print (steps (read n))
