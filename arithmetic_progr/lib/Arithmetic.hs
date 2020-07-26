module Arithmetic (ar) where


ar:: Double -> Double -> Double -> Double
ar f d n = 
  (2* f + (n - 1) * d) / 2 * n 
  