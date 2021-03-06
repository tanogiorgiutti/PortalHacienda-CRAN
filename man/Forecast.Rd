% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/FuncionesAcceso.R
\name{Forecast}
\alias{Forecast}
\title{Extender series con proyecciones de auto.arima (paquete Forecast)}
\usage{
Forecast(SERIE, N = 6, confidence = c(80), ...)
}
\arguments{
\item{SERIE}{XTS a extender}

\item{N}{Cantidad de períodos a extender (detecta automáticamente la frecuencia de la serie)}

\item{confidence}{Vector de intervalos de confianza a agregar en la salida (i.e. c(95)) o FALSE sin intervalos}

\item{...}{otros parámetros para \code{auto.arima}}
}
\value{
XTS con la serie expandida e intervalos de confianza al % seleccionado en level
}
\description{
Recomendado sólo para estimaciones rápidas.\code{Forecast} sólo acepta XTS con una única serie de tiempo. Para múltiples series usar \code{vForecast}
}
\examples{
# Forecast de 12 meses del tipo de cambio
\donttest{
TCN <- Forecast(Get("174.1_T_DE_CATES_0_0_32", start_date = "2017"), N = 12 , confidence = c(80))
}
}
