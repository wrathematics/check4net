\name{check4net}
\alias{check4net}


\title{ Check for Internet Access }
\description{
  A simple utility for continuously checking whether or not there 
  you can access the internet.  The function pings google.com via
  the pingr package.
}
\usage{
  check4net(timeout=10, verbose=TRUE, beep=TRUE)
}
\arguments{
  \item{timeout}{integer; determines the amount of time between
  tries.}
  \item{verbose}{logical; indicates whether status information
  should be printed to the terminal or not.}
  \item{beep}{logical; indicates whether an audible "beep" via the
  beepr package should be made upon success.}
}
\examples{
\dontrun{
library(check4net, quietly=TRUE)

check4net()
}
}
