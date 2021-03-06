\name{entrez_summary}
\alias{entrez_summary}
\title{Get summaries of objects in NCBI datasets from a unique ID}
\usage{
  entrez_summary(db, ...)
}
\arguments{
  \item{db}{character Name of the database to search for}

  \item{\dots}{character Additional terms to add to the
  request. Requires either ID (unique id(s) for records in
  a given database) or WebEnv (a character containing a
  cookie created by a previous entrez query).}
}
\value{
  A list of esummary records (if multiple IDs are passed)
  or a single record.

  file XMLInternalDocument xml file resulting from search,
  parsed with \code{\link{xmlTreeParse}}
}
\description{
  Contstructs a query from the given arguments, including a
  database name and list of of unique IDs for that database
  then downloads the XML document created by that query.
  The XML document is parsed, with the
}
\examples{
\dontrun{
 pop_ids = c("307082412", "307075396", "307075338", "307075274")
 pop_summ <- entrez_summary(db="popset", id=pop_ids)
 sapply(popset_summ, "[[", "Title")
}
}

