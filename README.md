# check4net

After spending all morning without internet access, I decided I
wanted an R solution that would continue to check for internet
access and alert me when it was back.


```r
check4net(timeout=10, verbose=TRUE, beep=TRUE)
# Checking...Failure!
# Sleeping: 9....8....7....6....5....4....3....2....1....0....
# Checking...Failure!
# Sleeping: 9....8....7....6....5....4....3....2....1....0....
# Checking...Success!
# Net's back!
# [1]
```