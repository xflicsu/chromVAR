% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/test_sets.R
\docType{methods}
\name{makeBiasBins}
\alias{makeBiasBins}
\alias{makeBiasBins,SummarizedExperiment-method}
\alias{makeBiasBins,RangedSummarizedExperiment-method}
\alias{makeBiasBins,MatrixOrmatrix-method}
\title{makeBiasBins}
\usage{
makeBiasBins(object, ...)

\S4method{makeBiasBins}{SummarizedExperiment}(object,
  bias = rowData(object)$bias, nbins = 25, frac = 0.3)

\S4method{makeBiasBins}{RangedSummarizedExperiment}(object,
  bias = rowRanges(object)$bias, nbins = 25, frac = 0.3)

\S4method{makeBiasBins}{MatrixOrmatrix}(object, bias, nbins = 25,
  frac = 0.3)
}
\arguments{
\item{object}{fragment counts stored as RangedSummarizedExperiment, 
SummarizedExperiment, matrix, or Matrix}

\item{...}{addtional arguments}

\item{bias}{vector of some bias signal (usually gc content) for each row of 
object}

\item{nbins}{number of bins for each category, see Details}

\item{frac}{fraction of peaks within given bin to select randomly}
}
\value{
SummarizedExperiment storing bias bins annotation
}
\description{
Makes bins based on fragment counts
}
\details{
Will create nbins * 3 annotations based on sampling from peaks with 
a certain fragment count, fragment count, or fragment count & bias.
}
\section{Methods (by class)}{
\itemize{
\item \code{SummarizedExperiment}: method for SummarizedExperiment

\item \code{RangedSummarizedExperiment}: method for RangedSummarizedExperiment

\item \code{MatrixOrmatrix}: method for Matrix or matrix
}}

\examples{
# Load very small example counts (already filtered)
data(mini_counts, package = "chromVAR")
bb <- makeBiasBins(mini_counts)
}
\author{
Alicia Schep
}
