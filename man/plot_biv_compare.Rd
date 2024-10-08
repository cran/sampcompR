% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Bivdiff_Plot.R
\name{plot_biv_compare}
\alias{plot_biv_compare}
\title{Plot Comparison of Multiple Data Frames on a Bivariate Level}
\usage{
plot_biv_compare(
  biv_data_object,
  plot_title = NULL,
  plots_label = NULL,
  p_value = NULL,
  varlabels = NULL,
  mar = c(0, 0, 0, 0),
  note = FALSE,
  grid = "white",
  diff_perc = TRUE,
  diff_perc_size = 4.5,
  perc_diff_transparance = 0,
  gradient = FALSE,
  sum_weights = NULL,
  missings_x = TRUE,
  order = NULL,
  breaks = NULL,
  colors = NULL,
  ncol_facet = 3
)
}
\arguments{
\item{biv_data_object}{A object generated by the \link{biv_compare} function.}

\item{plot_title}{A character string containing the title of the plot.}

\item{plots_label}{A character string or vector of character strings
containing the new labels of the data frames that are used in the plot.}

\item{p_value}{A number between 0 and one to determine the maximum
significance niveau.}

\item{varlabels}{A character string or vector of character strings containing
the new labels of variables that are used in the plot.}

\item{mar}{A vector that determines the margins of the plot.}

\item{note}{If \code{note = TRUE}, a note will be displayed to describe the plot.}

\item{grid}{A character string, that determines the color of the lines
between the tiles of the heatmap.}

\item{diff_perc}{If \code{TRUE} a percental measure of difference between
\code{dfs} and benchmarks is displayed in the plot.}

\item{diff_perc_size}{A number to determine the size of the displayed percental
difference between surveys in the plot.}

\item{perc_diff_transparance}{A number to determine the transparency of the
displayed percental-difference between surveys in the plot.}

\item{gradient}{If gradient = TRUE, colors in the heatmap will be more or
less transparent, depending on the difference in Pearson's r of the data
frames of comparison.}

\item{sum_weights}{A vector containing information for every variable to weigh them in
the displayed percental difference calculation. It can be used if some variables are
over- or underrepresented in the analysis.}

\item{missings_x}{If TRUE, missing pairs in the plot will be marked with an X.}

\item{order}{A character vector to determine in which order the variables should be
displayed in the plot.}

\item{breaks}{A vector to label the color scheme in the legend.}

\item{colors}{A vector to determine the colors in the plot.}

\item{ncol_facet}{Number of columns used in faced_wrap() for the plots.}
}
\value{
A object generated with the help of \code{\link[ggplot2:ggplot2-package]{ggplot2::ggplot2()}}, used to visualize
the differences between the data frames and benchmarks.
}
\description{
Plot a object generated by \link{biv_compare} function.
}
\details{
The plot shows a heatmap of a correlation matrix, where the colors are determined by
the similarity of the Pearson's r value in both sets of respondents. Leaving
default breaks and colors,
\itemize{
\item \code{Same} (green) indicates, that the Pearson's r correlation is not significant > 0 in
the related data frame or benchmark or the Pearson's r correlations are not significant
different, between data frame and benchmark.
\item \code{Small Diff} (yellow) indicates that the Pearson's r
correlation is significant > 0 in the related data frame or benchmark and the Pearson's r
correlations are significant different, between data frame and benchmark.
\item \code{Large Diff} (red) indicates, that the same coditions of yellow are fulfilled, and
the correlations are either in opposite directions,or one is double the size of the other.
}
}
\examples{

## Get Data for comparison
require(wooldridge)
card<-wooldridge::card

south <- card[card$south==1,]
north <- card[card$south==0,]
black <- card[card$black==1,]
white <- card[card$black==0,]

## use the function to plot the data 
bivar_data<-sampcompR::biv_compare(dfs = c("north","white"),
                                   benchmarks = c("south","black"),
                                   variables= c("age","educ","fatheduc","motheduc","wage","IQ"),
                                   data=TRUE)
                        
sampcompR::plot_biv_compare(bivar_data)

}
