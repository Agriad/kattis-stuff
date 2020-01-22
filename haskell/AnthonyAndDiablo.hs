squared :: (Double) -> (Double)
squared (a) = (b) where
    b = a * a

check :: (Double, Double) -> IO()
check (area, fencing) =
    if squared (area) > fencing 
        then putStrLn ("Need more materials!")
        else putStrLn ("Diablo is happy!")

parser :: ([Char], [Char]) -> IO()
parser ([head | tail], list2) = 
    if head == " "
        then check(list2 :: Double, tail :: Double)
        else parser(tail, list2 ++ [head])

main = do 
    check("1.000000 4.000000")