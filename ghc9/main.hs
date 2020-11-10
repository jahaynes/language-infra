{-# LANGUAGE LinearTypes #-}

module Main where

linearIf :: Bool -> a #-> a
linearIf b x =
    if b
        then x
        else x

main :: IO ()
main = putStrLn (linearIf True "Hello, World!")

