###########################################################################
###
### 		Subject:	R-script To Document the Package
### 		Date: 		Septemer 2021
### 		Author: 	Bjoern Rohr
### 	Version:  	1.00
###
### 		Bugfix:   	/
###
###########################################################################


#########################
##### DOCUMENTATION #####
#########################

#' sampcompR: A package for the comparison of samples
#'
#' Easily analyze and visualize differences between samples (e.g., benchmark 
#' comparisons, nonresponse comparisons in surveys) on three levels. The 
#' comparisons can be univariate, bivariate or multivariate. On univariate 
#' level the variables of interest of a survey and a comparison survey 
#' (i.e. benchmark) are compared, by calculating one of several difference 
#' measures (e.g., relative difference in mean), and an average difference 
#' between the surveys. On bivariate level a function can calculate significant 
#' differences in correlations for the surveys. And on multivariate levels a 
#' function can calculate significant differences in model coefficients between 
#' the surveys of comparison. All of those differences can be easily plotted 
#' and outputted as a table. Visualization is based on 
#' \code{\link[ggplot2:ggplot]{ggplot}} and can be edited as other plots of 
#' ggplot afterwards. For more  detailed information on the methods and 
#' example use see: Rohr, B., Silber, H., & Felderer, B. (2024). „Comparing the 
#' Accuracy of Univariate, Bivariate, and Multivariate Estimates across 
#' Probability and Non-Probability Surveys with Population Benchmarks“  
#' https://doi.org/10.31235/osf.io/n6ehf.
#'
#' @section sampcompR functions:
#' \describe{
#' \item{\link[sampcompR]{uni_compare}}{Compare Datasets Univariate and Plot Differences}
#' \item{\link[sampcompR]{plot_uni_compare}}{Plot uni_compare objects}
#' \item{\link[sampcompR]{uni_compare_table}}{Get a table output of a uni_compare object}
#' \item{\link[sampcompR]{R_indicator}}{Calculate the R_indicator for several surveys}
#' \item{\link[sampcompR]{biv_compare}}{Compare Datasets Bivariate and Plot Differences}
#' \item{\link[sampcompR]{plot_biv_compare}}{Plot biv_compare objects}
#' \item{\link[sampcompR]{biv_compare_table}}{Get a table output of a biv_compare object}
#' \item{\link[sampcompR]{multi_compare}}{Compare two Datasets on a Multivariate Level (Any GLM Model)}
#' \item{\link[sampcompR]{plot_multi_compare}}{Plot multi_compare objects}
#' \item{\link[sampcompR]{multi_compare_table}}{Get a table output of multi_compare objects}
#' \item{\link[sampcompR]{multi_compare_merge}}{Combine two multi_compare objects, to plot them together}
#' \item{\link[sampcompR]{descriptive_table}}{Get a Descriptive Table for Every Data Frame}
#' \item{\link[sampcompR]{dataequalizer}}{Equalize dataframes}
#' }
#'
#' @section uni_compare function:
#' \link[sampcompR]{uni_compare} Returns data or a plot showing the difference of two or more
#' data frames The differences are calculated on the base of
#' differing metrics, chosen in the funct argument. 
#' Results can be visualized using \code{\link[sampcompR]{plot_uni_compare}}.
#' 
#' @section biv_compare function:
#' \link[sampcompR]{biv_compare} Returns data or heatmap of difference between two or 
#' more data frames, by comparing their correlation matrices. The comparison is 
#' based on Pearson's r, calculated using the \code{\link[Hmisc]{rcorr}} function.
#' Results can be visualized using \code{\link[sampcompR]{plot_biv_compare}}. 
#' 
#' @section multi_compare function:
#' \link[sampcompR]{multi_compare} Returns data of difference between two data frames 
#' on a multivariate level. Similar (multivariate) regression models are
#' compared between the surveys. Only GLM models are possible. Results can be 
#' visualized using \code{\link[sampcompR]{plot_multi_compare}}.
#' 
#'
#' @section dataequalizer function:
#' \link[sampcompR]{dataequalizer} compares two data frames and looks if data frames contain columns
#' with the same name. A copy of y is returned, containing only columns named identical
#' in x and y data frames. The function is mainly used in the other functions of the package.
#'
#'
# #' @section distribution_compare function:
# #' \code{distribution_compare} Returns regression results for a regression model
# #' for both combined data frames. The interaction term shows hat sample the effect
# #' is from. All interaction effects are calculated already and no multiplication is needed.
# #' In default the significance level of the second data frame shows the difference between
# #' df1 and df2, not if the effect size is significant >0.
#'
#'
# #' @section summary_multivar_compare function:
# #' \code{summary_multivar_compare} Returns a function as described in the
# #' \code{\link[sampcompR]{multivar_compare}} function (as if \code{out= "summary"}.
# #' in \code{multivar_compare}.
#'
#'
#' _PACKAGE
#' @name sampcompR
NULL
