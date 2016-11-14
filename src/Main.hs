import System.IO()
import System.Environment (getArgs)
import System.Directory (getCurrentDirectory)
import System.FilePath (pathSeparator)

main :: IO ()
main = do
  args <- getArgs
  currentDir <- getCurrentDirectory
  let fileName = currentDir ++ [pathSeparator] ++ processArgs args
  contents <- readFile fileName
  putStr contents


processArgs :: [String] ->  String
processArgs (s:[]) = s
processArgs _ = error "Expected only file name"
