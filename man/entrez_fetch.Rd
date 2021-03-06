\name{entrez_fetch}
\alias{entrez_fetch}
\title{Download data from NCBI databases}
\usage{
  entrez_fetch(db, rettype, retmode = "text", ...)
}
\arguments{
  \item{db}{character Name of the database to use}

  \item{rettype}{character Format in which to get data (eg,
  fasta, xml...)}

  \item{retmode}{character Mode in which to recieve data,
  defaults to 'text'}

  \item{\dots}{character Additional terms to add to the
  request}
}
\value{
  chracter string containing the file created
}
\description{
  Download data from NCBI databases
}
\examples{
\dontrun{
   katipo <- "Latrodectus katipo[Organism]"
   katipo_search <- entrez_search(db="nuccore", term=katipo)
   kaitpo_seqs <- entrez_fetch(db="nuccore", ids=katipo_search$ids, format="fasta")
}
}

