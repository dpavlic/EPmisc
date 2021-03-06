% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/models.R
\name{\%~\%}
\alias{\%~\%}
\title{\%~\%}
\usage{
original_formula \%~\% addition
}
\arguments{
\item{original_formula}{the original formula to use.}

\item{addition}{Additions / removals / changes to the formula.}
}
\value{
Updated formula.
}
\description{
Model update operator. It functions in place of the model update function.
In the context of %~% and update.formula, the  . means ‘what was previously
in this part of the formula’.
}
\examples{
## Add Sepal.Width to model2.
model <- setosa ~ Sepal.Length
## Add Sepal.Width to the existing model.
model2 <- model \%~\% ~ . + Sepal.Width
## Note the brackets are necessary in case of LHS substitution, otherwise
## the whole formula is consumed without evaluation.
model3 <- model \%~\% (Sepal.Width ~ .)
}
