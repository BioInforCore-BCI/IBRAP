% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/perform.nn.v2.R
\name{perform.nn.v2}
\alias{perform.nn.v2}
\title{Performs Seurats nearest neighbour algorithm}
\usage{
perform.nn.v2(
  object,
  assay,
  reduction,
  neighbour.name.suffix = "",
  dims = NULL,
  k.param = 20,
  prune.SNN = 1/15,
  nn.method = "annoy",
  n.trees = 50,
  nn.eps = 0,
  annoy.metric = "euclidean"
)
}
\arguments{
\item{object}{IBRAP S4 class object}

\item{assay}{Character. String containing indicating which assay to use}

\item{reduction}{Character. String defining which reduction to supply to the clustering algorithm.}

\item{k.param}{Numerical. The number of k when calcuating k-nearest neighbour. Default = 20}

\item{prune.SNN}{Numerical. Setas acceptance cutoff for jaccard index whilst computing neighbourhood overlap for SNN construction. Any edges with a value less than this parameter will be removed. 0 = no pruning and 1 = prune everything. Default = 0}

\item{nn.method}{Character. Nearest neighbour method, either 'rann' or 'annoy'. Default = 'annoy'}

\item{n.trees}{Numerical. More trees facilitates hgiher precision when using 'annoy' method. Default = 20}

\item{nn.eps}{Numerical. Margin of error when performing nearest neighbour search whilst using rann method. 0 would imply an exact search. Default = 0.0}

\item{annoy.metric}{Character. Distance metric for annoy method. Options: 'euclidean', 'cosine', 'manhattan', 'hamming'. Default = 'euclidean'}

\item{neighbour.name}{Character. String defining the names to store the neighbourhood graph results under.}

\item{compute.SNN}{Boolean. Should the shared nearest neighbour graph be calculated. Default = TRUE}
}
\description{
Neighbourhood graph generator utilised by Seurat
}
\examples{

object <- perform.nn.v1(object = object, assay = c('SCT', 'SCRAN', 'SCANPY'), 
                        reduction = c('pca_bbknn_bbknn:diffmap','pca_harmony_nn.v1:diffmap', 'scanorama_nn.v1:diffmap'), 
                        dims = list(0,0,0))

}
