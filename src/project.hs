module Main(main) where

import System.Environment


import YakCli

main :: IO ()
main =
    getArgs              >>=
    return . makeOptions >>=
    outputCfdData        >>=
    mapM_ (putStrLn.show)
