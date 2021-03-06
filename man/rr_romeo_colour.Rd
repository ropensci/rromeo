% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rr_romeo_colour.R
\name{rr_romeo_colour}
\alias{rr_romeo_colour}
\alias{rr_romeo_color}
\title{Query publisher by RoMEO colour}
\usage{
rr_romeo_colour(
  romeo_colour = c("green", "blue", "yellow", "white"),
  key = NULL
)
}
\arguments{
\item{romeo_colour}{[\code{character(1)}]\cr{}
in \code{c("green", "blue", "yellow", "white")}
the SHERPA/RoMEO colour to retrieve}

\item{key}{[\code{character(1)}]\cr{}
a character string containing the API key or \code{NULL}
(see Details section on how to specify it)}
}
\value{
Returns a data frame with the following columns:
\itemize{
\item \code{romeoid}     [\code{integer(1)}]\cr{}
the internal index of the publisher in the SHERPA/RoMEO
database
\item \code{publisher}   [\code{character(1)}]\cr{}
the name of the publisher
\item \code{alias}       [\code{character(1)}]\cr{}
if applicable an alternative name of the publisher or the
name of the specific publishing branch
\item \code{romeocolour} [\code{character(1)}]\cr{}
a colour assigned by the database that reflects the default
policies of the publisher
\item \code{preprint}    [\code{character(1)}]\cr{}
is the preprint (not reviewed) archivable?
\item \code{postprint}   [\code{character(1)}]\cr{}
is the postprint (reviewed but not formatted) archivable?
\item \code{pdf}         [\code{character(1)}]\cr{}
is the publisher's version (reviewed and formatted)
archivable?
}
}
\description{
SHERPA/RoMEO classifies publisher in different colours depending on their
archiving policies.
\itemize{
\item \strong{green} publishers let authors archive preprint and postprint or
publisher's version/PDF,
\item \strong{blue} publishers let authors archive postprint or publisher's
version/PDF,
\item \strong{yellow} publishers let authors archive preprint,
\item \strong{white} publishers do not formally support archival.
}
}
\details{
For more details about the definitions of RoMEO colours check the
\href{http://sherpa.ac.uk/romeo/definitions.php#colours}{FAQ section} of
SHERPA/RoMEO

Note that when using \code{\link[=rr_romeo_colour]{rr_romeo_colour()}} the API returns \strong{all} the
publishers in the selected category, so the results are generally bigger in
size than specific functions like \code{\link[=rr_journal_name]{rr_journal_name()}} or \code{\link[=rr_publisher_id]{rr_publisher_id()}}
}
\examples{
\donttest{
rr_romeo_colour(romeo_colour = "green")
}
}
