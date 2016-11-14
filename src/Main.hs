import System.IO()
import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  let fileName = processArgs args
  putStrLn fileName
  contents <- readFile fileName
  putStr contents


processArgs :: [String] ->  String
processArgs (s:[]) = s
processArgs _ = error "Expected only file name"
