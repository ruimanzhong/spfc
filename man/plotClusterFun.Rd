% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/visualization.R
\name{plotClusterFun}
\alias{plotClusterFun}
\title{Plot Clustered Functions}
\usage{
plotClusterFun(Y, E, nt, ns, clust_res, final_model, page, filepath)
}
\arguments{
\item{Y}{Numeric matrix containing the data to be plotted, with each column representing a different time series.}

\item{nt}{Integer, the number of time points.}

\item{clust_res}{Numeric vector containing cluster assignments for each time series in Y.}

\item{final_model}{List of model objects for each cluster, each containing a summary of fitted values.}

\item{filepath}{Character string, the name of the file where the plot will be saved.}

\item{a, b}{plot arrange number}
}
\value{
Invisible NULL. The function's primary output is a graphical file saved to the specified location.
The function does not return any value within R.
}
\description{
This function plots the results of a clustering analysis, displaying each cluster with its respective time series.
It uses pre-computed model results to add a line representing the mean fitted values for each cluster.
The function saves the plots to a specified file.
}
\details{
The function generates a jpeg file with a series of plots arranged in a grid. Each plot corresponds
to a cluster and shows the individual time series in the cluster as well as the mean fitted values across
the cluster. The function dynamically adjusts the number of rows in the plot grid based on the number
of clusters, aiming to arrange the plots in roughly three columns.

The individual time series are plotted in a semi-transparent gray to allow for overlap visibility,
while the mean of the model's fitted values for each cluster is plotted in red for emphasis.
}
\examples{
# Assuming Y is a matrix of time series data, nt is the number of time points,
# clust_res contains cluster assignments, and final_model is a list of model summaries:
\dontrun{
plotClusterFun(Y, 50, cluster_results, models, "path/to/save/cluster_plot.jpeg")
}
}
