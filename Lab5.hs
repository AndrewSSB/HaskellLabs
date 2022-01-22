-- 1
firstEl :: [(a,b)] -> [a]
firstEl = map fst


-- 2
sumList :: [[Int]] -> [Int]
sumList = map sum

-- 3
prel2 :: [Int] -> [Int]
prel2 = map (\x -> if even x then div x 2 else x*2)

-- 4
fooChar :: Char -> [String] -> [String]
fooChar c = filter (elem c)

-- 5
fooOddSquares :: [Int] -> [Int]
fooOddSquares list = map (^2) (filter odd list)

-- 6
fooOddIndexSquares :: [Int] -> [Int]
fooOddIndexSquares list = map ((^2) . snd) (filter (odd . fst) (zip [1..length list] list))

-- 7
noCons :: [String] -> [String]
noCons = map (filter (`elem` "aeiou"))


-- 8
myMap :: (a -> b) -> [a] -> [b]
myMap _ [] = []
myMap f (x:xs) = f x : myMap f xs

myFilter :: (a -> Bool) -> [a] -> [a]
myFilter _ [] = []
myFilter p (x:xs) = if p x then x : myFilter p xs else myFilter p xs

-- 9
sumSquares :: [Int] -> Int
sumSquares list = sum (map (^2) (filter odd list))

-- 10
allTrue :: [Bool] -> Bool
allTrue = foldr (&&) True

-- 11
rmChar :: Char -> String -> String
rmChar ch string = [c | c <- string, c /= ch]

rmCharsRec :: String -> String -> String 
rmCharsRec _ [] = []
rmCharsRec unwanted (x:xs)
  | x `notElem` unwanted = x: rmCharsRec unwanted xs
  | otherwise            = rmCharsRec unwanted xs

rmCharsFold :: String -> String -> String
rmCharsFold unwanted = foldr (\c -> if c `notElem` unwanted then (c:)
  else id) []