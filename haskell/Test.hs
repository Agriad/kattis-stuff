test :: (Int, Int) -> IO()
test (a, b) = putStrLn (show (a + b))

onion :: (Int) -> IO()
onion (a) = putStrLn (show (a * a))

korean :: (Int) -> (Int)
korean (a) = (b) where
    b = june(a, a) 

june :: (Int, Int) -> (Int)
june (a, b) = (c) where
    c = a + b

jalopnik :: (Int) -> IO()
jalopnik (a) = 
    if a > 50
        then putStrLn ("pleb")
        else putStrLn ("plebian")

lins :: (Int) -> (Int)
lins (a) = 
    if a > 50
        then 1
        else 0

main = do
    test(1, 2)
    onion(4)
    putStrLn (show (korean(3)))
    jalopnik(49)
    --lins(4)
