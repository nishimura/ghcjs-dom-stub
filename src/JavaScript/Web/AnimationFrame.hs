module JavaScript.Web.AnimationFrame
    ( waitForAnimationFrame
    , inAnimationFrame
    , cancelAnimationFrame
    , AnimationFrameHandle
    ) where

import           GHCJS.Foreign.Callback
import           GHCJS.Marshal.Pure
import           GHCJS.Types

import           Control.Exception      (onException)
import           Data.Typeable

import           GHCJS.Foreign.Internal (jsNull)

newtype AnimationFrameHandle = AnimationFrameHandle JSVal
  deriving (Typeable)

{- |
     Wait for an animation frame callback to continue running the current
     thread. Use 'GHCJS.Concurrent.synchronously' if the thread should
     not be preempted. This will return the high-performance clock time
     stamp once an animation frame is reached.
 -}
waitForAnimationFrame :: IO Double
waitForAnimationFrame = pure 0

{- |
     Run the action in an animationframe callback. The action runs in a
     synchronous thread, and is passed the high-performance clock time
     stamp for that frame.
 -}
inAnimationFrame :: OnBlocked       -- ^ what to do when encountering a blocking call
                 -> (Double -> IO ())  -- ^ the action to run
                 -> IO AnimationFrameHandle
inAnimationFrame _ _ = return $ AnimationFrameHandle jsNull

cancelAnimationFrame :: AnimationFrameHandle -> IO ()
cancelAnimationFrame _ = pure ()
{-# INLINE cancelAnimationFrame #-}
