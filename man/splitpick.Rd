\name{splitpick}
\alias{splitpick}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Split character fields and choose one element}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
splitpick(x, split, occur)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
}
  \item{split}{
%%     ~~Describe \code{split} here~~
}
  \item{occur}{
%%     ~~Describe \code{occur} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (x, split, occur) 
unlist(lapply(strsplit(x, split = split, fixed = TRUE), function(a) a[occur]))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
