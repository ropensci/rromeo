% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rr_publisher_all.R
\name{rr_publisher_all}
\alias{rr_publisher_all}
\title{Get all Publisher Policies}
\usage{
rr_publisher_all(key = NULL)
}
\arguments{
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
Retrieve all data on publishers policies from SHERPA/RoMEO.
}
\details{
There are several ways to provide your API key.
The best way to know about them is to refer to the vignette about
"Setting Up Your API key" accessible with the following command:
\code{vignette("setting_up_api_key", package = "rromeo")}.
You can also use \code{\link{rr_auth}} that will use the provided key to store it as
an environmental variable.
}
