verbose_sleeper <- function(timeout)
{
  cat("Sleeping: ")
  for (i in 1:timeout)
  {
    cat(timeout-i)
    for (j in 1:4)
    {
      cat(".")
      Sys.sleep(.25)
    }
  }
  cat("\n")
  
  invisible()
}



check4net <- function(timeout=10, verbose=TRUE, beep=TRUE)
{
  assert.wholenum(timeout)
  assert.nonneg(timeout)
  assert.type(verbose, "logical")
  assert.type(beep, "logical")
  
  while (TRUE)
  {
    if (verbose) cat("Checking...")
    
    test <- tryCatch(
      test <- ping_port("www.google.com", port=80, count=1L), 
      error=function(e) NA
    )
    
    if (verbose)
    {
      if (!is.na(test))
      {
        cat("Success!\n")
        break
      }
      else
        cat("Failure!\n")
    }
    
    if (timeout > 0)
    {
      if (verbose)
        verbose_sleeper(timeout=timeout)
      else
        Sys.sleep(timeout)
    }
  }
  
  if (beep) beep()
  if (verbose) cat("Net's back!\n")
  
  return(TRUE)
}

