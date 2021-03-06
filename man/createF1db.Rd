% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create_ergast_db.R
\name{createF1db}
\alias{createF1db}
\title{Create an F1 database
Creates a local 'RSQLite' database using the latest 'Ergast' data and establish a connection.}
\usage{
createF1db(csv_dir = NULL, rm_csv = FALSE, type = "sqlite")
}
\arguments{
\item{csv_dir}{either NULL or the name of a directory containing csv files from Ergast.
If NULL, the files will be downloaded and placed in a directory within the working directory named "/f1db_csv"}

\item{rm_csv}{logical indicating whether the csv directory should be deleted after initializing the database}

\item{type}{Indicates the type of database backend used}
}
\value{
an object of class RSQLite
}
\description{
Create an F1 database
Creates a local 'RSQLite' database using the latest 'Ergast' data and establish a connection.
}
\details{
\code{createF1db()} creates a local 'RSQLite' database using csv files downloaded from Ergast.
The database will be located in a file 'f1_db.RSQLite' within the working directory.
}
\examples{
\donttest{
library(DBI)
}
}
