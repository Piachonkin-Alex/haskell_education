{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_sq_test (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/sanches/github/haskell_education/first_project/.stack-work/install/x86_64-linux/09f700479c383965e131bfc079a5aefe826c42142e06a3472e2e78b8bb72dec2/8.8.3/bin"
libdir     = "/home/sanches/github/haskell_education/first_project/.stack-work/install/x86_64-linux/09f700479c383965e131bfc079a5aefe826c42142e06a3472e2e78b8bb72dec2/8.8.3/lib/x86_64-linux-ghc-8.8.3/sq-test-0-Ju5zqhELtXcA2e9b5crdOo-tests"
dynlibdir  = "/home/sanches/github/haskell_education/first_project/.stack-work/install/x86_64-linux/09f700479c383965e131bfc079a5aefe826c42142e06a3472e2e78b8bb72dec2/8.8.3/lib/x86_64-linux-ghc-8.8.3"
datadir    = "/home/sanches/github/haskell_education/first_project/.stack-work/install/x86_64-linux/09f700479c383965e131bfc079a5aefe826c42142e06a3472e2e78b8bb72dec2/8.8.3/share/x86_64-linux-ghc-8.8.3/sq-test-0"
libexecdir = "/home/sanches/github/haskell_education/first_project/.stack-work/install/x86_64-linux/09f700479c383965e131bfc079a5aefe826c42142e06a3472e2e78b8bb72dec2/8.8.3/libexec/x86_64-linux-ghc-8.8.3/sq-test-0"
sysconfdir = "/home/sanches/github/haskell_education/first_project/.stack-work/install/x86_64-linux/09f700479c383965e131bfc079a5aefe826c42142e06a3472e2e78b8bb72dec2/8.8.3/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "sq_test_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "sq_test_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "sq_test_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "sq_test_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "sq_test_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "sq_test_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
