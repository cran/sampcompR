% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Output_Tables.R
\name{descriptive_table}
\alias{descriptive_table}
\title{Get a Descriptive Table for Every Data Frame}
\usage{
descriptive_table(
  dfs,
  variables,
  varlabels = NULL,
  weight = NULL,
  strata = NULL,
  id = NULL,
  value = "mean",
  digits = 3
)
}
\arguments{
\item{dfs}{A character vector, containing the names of the data frames.}

\item{variables}{A character vector containing the variables in the data frame
that should be described.}

\item{varlabels}{A character vector containing the Labels for every variable in variables.}

\item{weight}{A character vector, containing either the name of a weight in the
respective data frame, or NA, if no weighting should be performed for this data frame.}

\item{strata}{A character vector, containing either the name of a strata in the
respective data frame, or NA, if no strata  should be used when weighting this
data frame.}

\item{id}{A character vector, containing either the name of a id in the
respective data frame, or NA, if every row is unique for this data frame.}

\item{value}{A character vector indicating what descriptive value should be displayed
for the data frame. It can either be "mean", "percent", "total", or "total_percent".}

\item{digits}{A numeric value indicating the number of digits that the Descriptive table
should be rounded to.}
}
\value{
Returns a matrix of Descriptive information. Output depends on value.
}
\description{
Get a Descriptive Table for every Data Frame, to easy document your Data
}
