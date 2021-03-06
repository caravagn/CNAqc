% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_peaks_analysis.R
\name{plot_peaks_analysis}
\alias{plot_peaks_analysis}
\title{Plot the results of peak analysis.}
\usage{
plot_peaks_analysis(x, empty_plot = TRUE, assembly_plot = TRUE)
}
\arguments{
\item{x}{An object of class \code{cnaqc}, where function \code{analyze_peaks} has
been computed.}

\item{empty_plot}{If data for one karyotype is missing, an empty plot is returned.
Otherwise the plot is not returned (NULL is forwarded).}

\item{assembly_plot}{If \code{TRUE}, a unique figure is returned with all the
plots assembled. Otherwise a list of plot is returned.}
}
\value{
A \code{ggpubr} object for an assembled figure.
}
\description{
@description Results from \code{analyze_peaks} can be visualised with this
 function, which arranges the plots of each karyotype in a figure via \code{ggpubr}.
 Each karyotype shows the data, the estimated density, the peaks (selected and
 discarded), and the fit with shaded matching area.
}
\examples{
data('example_dataset_CNAqc', package = 'CNAqc')
x = init(example_dataset_CNAqc$snvs, example_dataset_CNAqc$cna,example_dataset_CNAqc$purity)

x = analyze_peaks(x)
plot_peaks_analysis(x)
}
