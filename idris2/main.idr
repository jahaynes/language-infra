main : IO ()
main = putStrLn $ reverse "Hello"

reverse : List a -> List a
reverse = revAcc []
    where
    revAcc : List a -> List a -> List a
    revAcc acc      [] = acc
    revAcc acc (x::xs) = revAcc (x::acc) xs
