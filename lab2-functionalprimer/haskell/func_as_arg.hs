--create inpFunc
inpFunc a b = [a..b]

--Define applicatorFunc
-- applicatorFunc inpFunc s a b = if s=='s' then sum (inpFunc a b) else (sum (inpFunc a b))/5  
applicatorFunc inpFunc s a b | s =='s' = sum (inpFunc a b)
                             | otherwise = (sum (inpFunc a b))/(b-a+1) 

main = do
    let result = applicatorFunc inpFunc 'a' 0 5 --Call applicatorFunc with inpFunc and 'a' as args
    putStrLn("sum = " ++ show(result))