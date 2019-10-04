parts :: String -> (Integer,Float)
parts ds = (ipart es,fpart  fs)
	where (es,d:fs) = break (== '.') ds
ipart = foldl shiftl 0 . map toDigit
	where shiftl n d = n*10 + d
fpart = foldr shiftr 0 . map toDigit
	where shiftr d x = (d + x)/10
toDigit d =fromIntegral (fromEnum d - fromEnum '0')